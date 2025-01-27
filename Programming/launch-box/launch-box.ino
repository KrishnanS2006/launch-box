a
/*
  toggle - on/off/on switch
  pulse - you push it and it opens, waits .05s, and closes
  Nitrogen Fill (1 switch (toggle)))
  Ethanol Drain (1 switch (toggle))
  Ethanol Vent (1 button (pulse), 1 switch (toggle))
  Ethanol Main Propellant Valve (1 switch (toggle))
  Nitrous Oxide Fill
  Nitrous Oxide Drain
  Nitrous Oxide Vent
  Nitrous Oxide Main Propellant Valve
*/

#include "constants.h"

#define PULSE_TIME 500
#define SPECIAL_OPEN_TIME 5000
#define SPECIAL_CLOSE_TIME 1000

// default is 2
enum pin_state {
  DO_NOTHING = 1,
  OPEN_VENT = 2,
  CLOSE_VENT = 3
};

// Pin counts

const int NUM_VALVES = 8;
const int NUM_BUTTONS = 5;

// Local variables
boolean aborted;

// Arrays that keep track of stuff
// States: 0 means do nothing, 1 is CLOSE_VENT, and 2 is OPEN_VENT (matches the constants)
pin_state states[NUM_VALVES];


// both of these arrays contain information on when to stop the actuation for the respective action
// i.e special_open_timings contains the time when we should stop the OPEN_VENT actuation for NC special valves
// and close the valve and let it rest for a second
unsigned long pulse_timings[NUM_VALVES];
unsigned long special_open_timings[NUM_VALVES];

// this array is used to control how long a special valve should be closed for before reopening
unsigned long special_close_timings[NUM_VALVES];

// for all pin arrays, the order is
// NITROGEN_FILL, ETHANOL_DRAIN, ETHANOL_VENT, ETHANOL_MPV, NO_FILL, NO_DRAIN, NO_VENT, NO_MPV
// and each variable for each valve is stored in that order

// variable values (booleans, etc) for each of these are in constants.h
// for example, IS_NC is the modifier for each pin, and all of the IS_NC values are stored in constants.h

// all valves take up two pins, and each vent_pin value stores the first of these pins
// so, it goes 2, 4, 6, 8, 10, 12, etc
int vent_pins[] = {NITROGEN_FILL_HIGH, ETHANOL_VENT_HIGH, ETHANOL_MPV_HIGH, ETHANOL_DRAIN_HIGH, NO_FILL_HIGH, NO_DRAIN_HIGH, NO_VENT_HIGH, NO_MPV_HIGH, es1_HIGH};
int output_pins[] = {NITROGEN_FILL_OUT, ETHANOL_VENT_OUT, ETHANOL_MPV_OUT, ETHANOL_DRAIN_OUT, NO_FILL_OUT, NO_DRAIN_OUT, NO_VENT_OUT, NO_MPV_OUT, es1_OUT};

boolean special_valves[] = {NITROGEN_FILL_SPECIAL, ETHANOL_DRAIN_SPECIAL, ETHANOL_VENT_SPECIAL, ETHANOL_MPV_SPECIAL, NO_FILL_SPECIAL, NO_DRAIN_SPECIAL, NO_VENT_SPECIAL, NO_MPV_SPECIAL, es1_SPECIAL};
boolean nc_valves[] = {NITROGEN_FILL_IS_NC, ETHANOL_DRAIN_IS_NC, ETHANOL_VENT_IS_NC, ETHANOL_MPV_IS_NC, NO_FILL_IS_NC, NO_DRAIN_IS_NC, NO_VENT_IS_NC, NO_MPV_IS_NC, es1_IS_NC};

// -1 indicates that there is no pulse pin for the specified valve
//int pulse_pins[] = {-1, -1, ETHANOL_VENT_PULSE, -1, -1, -1, NO_VENT_PULSE, -1, -1, -1, -1, -1};
int pulse_pins[] = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

void setup() {
  for (int i = 0; i < NUM_VALVES; i++) {
    // since vent_pins are 2, 4, 6, 8, etc, we have to account for the current pin and the next one for pinMode
    pinMode(vent_pins[i], INPUT_PULLUP);
    pinMode(vent_pins[i] + 1, INPUT_PULLUP);
    pinMode(output_pins[i], OUTPUT);
  }
  for (int i = 0; i < NUM_BUTTONS; i++) {
    pinMode(pulse_pins[i], INPUT_PULLUP);
  }
  pinMode(ABORT_PIN, INPUT_PULLUP);
  Serial.begin(9600);
  aborted = false;

  for (int i = 0; i < NUM_VALVES; i++) {
    states[i] = DO_NOTHING;
    pulse_timings[i] = 0;
    special_open_timings[i] = 0;
    special_close_timings[i] = 0;
  }
}

void loop() {
  //*****************************
  aborted = !digitalRead(ABORT_PIN);
  if (aborted)
  {
      for (int i = 0; i < NUM_VALVES; i++) {
        auto valve = output_pins[i];
        bool state = 0; //closed
        if (valve == ETHANOL_VENT_OUT || valve == NO_VENT_OUT)
          state = 1;
        digitalWrite(valve,state);
      }
  }
  
  //*****************************
  
  for (int i = 0; i < NUM_VALVES; i++) {

    // CHECKME: currently we're running this segment of code to check states on pulse pins as well as normal pins
    // is this something we should be doing, or only check normal pins?

    int pin = vent_pins[i];
    pin_state current_state = checkToggleSwitch(pin); // check if its open, close, or DO_NOTHING

    if (current_state != states[i]) { // if the switch is flicked and the command has changed since last iteration
      Serial.println("Stupid");
      Serial.println(vent_pins[i]);
      Serial.println(output_pins[i]);
      Serial.println(i);
      states[i] = current_state; // update the state list with the current state
      if (states[i] == OPEN_VENT && isSpecial(i)) { // only NC valves are special, so we only have to check for OPEN_VENT
        special_open_timings[i] = millis() + SPECIAL_OPEN_TIME;
      }

      // CHECKME: if states[i] == CLOSE_VENT && isSpecial(i) should we reset the special_close_timings and special_open_timings?
      // this is when we want to close the special valve once and for all, no more handling special until we decide to open it again later
    }

    if (pulse_pins[i] != -1) { // check pulse pins
      boolean pressed = buttonRead(pulse_pins[i]);
      if (pressed) {
        pulse_timings[i] = millis() + PULSE_TIME;
        digitalWrite(pulse_pins[i], HIGH);
      }
    }

    boolean autoseq_activated = buttonRead(AUTOSEQ_PIN);
    if (autoseq_activated) {
      autosequence();
    }

    if (isPulsing(i)) {
      handlePulse(i);
    }

    else {

      handleVent(i);
      handleSpecial(i);
    }
  }
}
void handleVent(int index) {
  int pin = output_pins[index];
  int open_signal = HIGH;
  int close_signal = LOW;

  if (!isNC(index)) {
    open_signal = LOW;
    close_signal = HIGH;
  }

  if (states[index] == OPEN_VENT) { // only NC valves are special, so only need to check for OPEN_VENT
    // If it's a special, check if its currently holding open for 4s or reliving for 1s
    if (isSpecial(index)) {

      // special timings are handled in handleSpecial(), we only have to see if the timing value has been reset or not here
      if (special_open_timings[index] != 0) { // if the value hasn't been reset and we're still supposed to be open
        Serial.println("Open Signal:");
        Serial.println(pin);
        digitalWrite(pin, open_signal);
      }

      else {
        // if the value == 0 -> it's been reset and it's time to relieve the solenoid
        // the special_close_timing has already been set by handleSpecial() in the previous iteration
        Serial.println("Close Signal:");
        Serial.println(pin);
        digitalWrite(pin, close_signal);
      }
    }
    // If it's not a special valve, then digitalWrite HIGH on open
    else {
      digitalWrite(pin, open_signal); // CHECKME: unnecessary, but redundancy is good, delete or no?
    }
  }
  // If the valve is closing, then digitalWrite LOW
  else if (states[index] == CLOSE_VENT) {
    digitalWrite(pin, close_signal);
  }
}


// handleSpecial is called after handleVent because it's used to prepare for transitioning from actuate -> relieve
// or vice versa by setting all the timing values and state values so that we're free to transition next iteration


void handleSpecial(int index) {
  if (!special_valves[index]) {
    return;
  }

  if (states[index] != OPEN_VENT) {
    return;
  }

  unsigned long curr = millis();

  if (special_open_timings[index] != 0 && curr > special_open_timings[index]) { // if it's time to relieve the special solenoid
    special_open_timings[index] = 0;
    special_close_timings[index] = curr + SPECIAL_CLOSE_TIME;
  }

  // if relief time is over and we gotta start making the solenoid open again
  else if (special_close_timings[index] != 0 && curr > special_close_timings[index]) {
    special_close_timings[index] = 0;
    special_open_timings[index] = curr + SPECIAL_OPEN_TIME;
  }
}

void handlePulse(int index) {
  // Ignore this method if the valve isn't pulsing
  if (!isPulsing(index)) {
    return;
  }

  // If it's finished pulsing (it's been open for 500ms), then make it stop pulsing. Otherwise, keep pulsing.
  unsigned long curr = millis();
  if (curr > pulse_timings[index]) {
    pulse_timings[index] = 0;
    digitalWrite(pulse_pins[index], LOW); // stop the pulse
  }
  else {
    digitalWrite(pulse_pins[index], HIGH); // CHECKME: is this necessary? it should already be pulsing, but maybe good just to make sure
  }
}

boolean isNC(int index) {
  return nc_valves[index];
}

boolean isSpecial(int index) {
  return special_valves[index];
}

boolean canPulse(int index) {
  return pulse_pins[index] != 0;
}

// Check if a given valve is currently pulsing
boolean isPulsing(int index) {
  return pulse_timings[index] != 0;
}

// Returns true if a given button is being pressed, false if not.
int buttonRead(int pin) {
  int first = (analogRead(pin) > 900);
  delay(20);
  int second = (analogRead(pin) > 900);
  if (first == second) {
    return first;
  }
  Serial.println(first);
  return false;
}


/*
   note: these SPDT switches all have their common pins connected to GND because arduino only has an INPUT_PULLUP option instead of an INPUT_PULLDOWN option
   this means that a value of LOW indicates that the switch has been flicked in a certain direction, not HIGH
   switchStart always maps to CLOSE_VENT, OFF maps to DO_NOTHING, switchStart + 1 maps to OPEN_VENT
   @param switchStart: the first pin of a toggle switch
   @return CLOSE_VENT if the switch is closest to switchStart, DO_NOTHING if it's off, and OPEN_VENT if it's closest to switchStart + 1

   for example, if this is the switch:
                   /
                  /
                 /
                /
               /
    ----------/-----------
    8 (ON)  (OFF)        9 (ON)
    OPEN_VENT  DO_NOTHING    CLOSE_VENT
   then startSwitch is 8 and the method returns OPEN_VENT
   note that in this scenario, OPEN_VENT is returned even though switchStart has a value of LOW
   this reversal has to be done (i.e. we can't just check for HIGH) because the OFF state always has a state of HIGH, which means that 2 pins are always HIGH, and
   because of how SPDT works, the opposite pin is LOW
*/

pin_state checkToggleSwitch(int switch_HIGH) {
  int switch_LOW = switch_HIGH + 1;
  if (switch_HIGH == 12) {
    switch_LOW = 24;
  }
  if (digitalRead(switch_HIGH) == LOW) {
    // return OPExddzN_VENT;
    //    Serial.println("Closing vent: ");
    //    Serial.println(switch_HIGH);
    return CLOSE_VENT;
  }
  else if (digitalRead(switch_LOW) == LOW) {
    Serial.println("Opening vent: ");
    Serial.println(switch_LOW);
    return OPEN_VENT;
    // return CLOSE_VENT;
  }
  else {
    return DO_NOTHING;
  }
}

void autosequence() { // order: ethanol, nitrous 1, nitrous 2, nitrous 3, nitrous 4
  delay(10000); // wait 10 seconds
  digitalWrite(IGNITER_OUT, HIGH);
  delay(500);
  digitalWrite(ETHANOL_MPV_OUT, HIGH);
  digitalWrite(NO_MPV_OUT, HIGH);
  delay(3000);
  digitalWrite(ETHANOL_MPV_OUT, LOW); // ethanol
  delay(125);
  digitalWrite(NO_MPV_OUT, LOW);
}
