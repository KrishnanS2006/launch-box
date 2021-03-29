EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Launchbox"
Date "2020-09-14"
Rev "v01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author: Ankit Khandelwal"
$EndDescr
$Comp
L Switch:SW_SPDT_MSM SW1
U 1 1 5F604B13
P 2050 2350
F 0 "SW1" H 2050 2635 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 2050 2544 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 2050 2350 50  0001 C CNN
F 3 "~" H 2050 2350 50  0001 C CNN
	1    2050 2350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW2
U 1 1 5F604B92
P 2050 3050
F 0 "SW2" H 2050 3335 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 2050 3244 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 2050 3050 50  0001 C CNN
F 3 "~" H 2050 3050 50  0001 C CNN
	1    2050 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW3
U 1 1 5F605329
P 2050 3750
F 0 "SW3" H 2050 4035 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 2050 3944 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 2050 3750 50  0001 C CNN
F 3 "~" H 2050 3750 50  0001 C CNN
	1    2050 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW4
U 1 1 5F605654
P 2050 4400
F 0 "SW4" H 2050 4685 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 2050 4594 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 2050 4400 50  0001 C CNN
F 3 "~" H 2050 4400 50  0001 C CNN
	1    2050 4400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW9
U 1 1 5F605C35
P 4300 4950
F 0 "SW9" H 4300 5235 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 4300 5144 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 4300 4950 50  0001 C CNN
F 3 "~" H 4300 4950 50  0001 C CNN
	1    4300 4950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW10
U 1 1 5F606277
P 4300 5700
F 0 "SW10" H 4300 5985 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 4300 5894 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 4300 5700 50  0001 C CNN
F 3 "~" H 4300 5700 50  0001 C CNN
	1    4300 5700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW8
U 1 1 5F606A46
P 4300 4250
F 0 "SW8" H 4300 4535 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 4300 4444 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 4300 4250 50  0001 C CNN
F 3 "~" H 4300 4250 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW7
U 1 1 5F607311
P 4300 3500
F 0 "SW7" H 4300 3785 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 4300 3694 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 4300 3500 50  0001 C CNN
F 3 "~" H 4300 3500 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2350 1850 2350
Wire Wire Line
	1850 3050 1450 3050
Connection ~ 1450 3050
Wire Wire Line
	1450 3050 1450 2350
Wire Wire Line
	1850 3750 1450 3750
Connection ~ 1450 3750
Wire Wire Line
	1450 3750 1450 3050
Wire Wire Line
	1850 4400 1450 4400
Connection ~ 1450 4400
Wire Wire Line
	1450 4400 1450 3750
Wire Wire Line
	4100 3500 3550 3500
Wire Wire Line
	4100 4250 3550 4250
Wire Wire Line
	3550 3500 3550 4250
Connection ~ 3550 4250
Wire Wire Line
	3550 4250 3550 4950
Wire Wire Line
	4100 4950 3550 4950
Connection ~ 3550 4950
Wire Wire Line
	3550 4950 3550 5700
Wire Wire Line
	4100 5700 3550 5700
Connection ~ 3550 5700
$Comp
L Switch:SW_SPDT_MSM SW5
U 1 1 5F649AFA
P 2050 5100
F 0 "SW5" H 2050 5385 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 2050 5294 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 2050 5100 50  0001 C CNN
F 3 "~" H 2050 5100 50  0001 C CNN
	1    2050 5100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW6
U 1 1 5F64A31F
P 2050 5800
F 0 "SW6" H 2050 6085 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 2050 5994 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 2050 5800 50  0001 C CNN
F 3 "~" H 2050 5800 50  0001 C CNN
	1    2050 5800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW11
U 1 1 5F64A902
P 4300 6350
F 0 "SW11" H 4300 6635 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 4300 6544 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 4300 6350 50  0001 C CNN
F 3 "~" H 4300 6350 50  0001 C CNN
	1    4300 6350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT_MSM SW12
U 1 1 5F64B120
P 4300 7150
F 0 "SW12" H 4300 7435 50  0000 C CNN
F 1 "SW_SPDT_MSM" H 4300 7344 50  0000 C CNN
F 2 "Launchbox:SPDT_Slide_Switch" H 4300 7150 50  0001 C CNN
F 3 "~" H 4300 7150 50  0001 C CNN
	1    4300 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4400 1450 5100
Wire Wire Line
	3550 5700 3550 6350
Wire Wire Line
	3550 7150 4100 7150
Connection ~ 3550 7150
Wire Wire Line
	4100 6350 3550 6350
Connection ~ 3550 6350
Wire Wire Line
	3550 6350 3550 7150
Wire Wire Line
	1850 5100 1450 5100
Connection ~ 1450 5100
Wire Wire Line
	1450 5100 1450 5800
Wire Wire Line
	1850 5800 1450 5800
Connection ~ 1450 5800
Wire Wire Line
	2250 2450 2250 2300
Wire Wire Line
	2250 2950 2350 2950
Wire Wire Line
	2350 2950 2350 2400
Wire Wire Line
	2250 3150 2400 3150
Wire Wire Line
	2400 3150 2400 2450
Wire Wire Line
	2250 3650 2550 3650
Wire Wire Line
	2550 3650 2550 2550
Wire Wire Line
	2250 3850 2600 3850
Wire Wire Line
	2600 3850 2600 2600
Wire Wire Line
	2750 4300 2750 2700
Wire Wire Line
	2800 4500 2800 2750
Wire Wire Line
	2250 5000 2950 5000
Wire Wire Line
	2950 5000 2950 2850
Wire Wire Line
	2250 4300 2750 4300
Wire Wire Line
	2250 4500 2800 4500
Wire Wire Line
	2250 5200 3000 5200
Wire Wire Line
	3000 5200 3000 2900
Wire Wire Line
	2250 5700 3100 5700
Wire Wire Line
	3100 5700 3100 3000
Wire Wire Line
	1450 7150 3550 7150
Wire Wire Line
	1450 5800 1450 7150
$Comp
L power:GND #PWR01
U 1 1 5F69CEDC
P 1450 7400
F 0 "#PWR01" H 1450 7150 50  0001 C CNN
F 1 "GND" H 1455 7227 50  0000 C CNN
F 2 "" H 1450 7400 50  0001 C CNN
F 3 "" H 1450 7400 50  0001 C CNN
	1    1450 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7150 1450 7400
Connection ~ 1450 7150
Wire Wire Line
	4500 3600 4550 3600
Wire Wire Line
	4550 3600 4550 3450
Wire Wire Line
	4500 4150 4650 4150
Wire Wire Line
	4650 4150 4650 3550
Wire Wire Line
	4500 4350 4700 4350
Wire Wire Line
	4700 4350 4700 3600
Wire Wire Line
	2250 5900 3150 5900
Wire Wire Line
	3150 5900 3150 3050
Wire Wire Line
	4500 4850 4800 4850
Wire Wire Line
	4800 4850 4800 3700
Wire Wire Line
	4500 5050 4850 5050
Wire Wire Line
	4850 5050 4850 3750
Wire Wire Line
	4500 5600 4950 5600
Wire Wire Line
	4950 5600 4950 3850
Wire Wire Line
	4500 5800 5000 5800
Wire Wire Line
	5000 5800 5000 3900
Wire Wire Line
	7650 4350 7650 2250
Wire Wire Line
	2250 2250 7650 2250
Wire Wire Line
	7550 2300 7550 4350
Wire Wire Line
	2250 2300 7550 2300
Wire Wire Line
	7450 2400 7450 4350
Wire Wire Line
	2350 2400 7450 2400
Wire Wire Line
	7350 2450 7350 4350
Wire Wire Line
	2400 2450 7350 2450
Wire Wire Line
	7250 2550 7250 4350
Wire Wire Line
	2550 2550 7250 2550
Wire Wire Line
	7150 2600 7150 4350
Wire Wire Line
	2600 2600 7150 2600
Wire Wire Line
	7050 2700 7050 4350
Wire Wire Line
	2750 2700 7050 2700
Wire Wire Line
	6950 2750 6950 4350
Wire Wire Line
	2800 2750 6950 2750
Wire Wire Line
	6850 2850 6850 4350
Wire Wire Line
	2950 2850 6850 2850
Wire Wire Line
	6750 2900 6750 4350
Wire Wire Line
	3000 2900 6750 2900
Wire Wire Line
	6650 3000 6650 4350
Wire Wire Line
	3100 3000 6650 3000
Wire Wire Line
	6550 3050 6550 4350
Wire Wire Line
	3150 3050 6550 3050
Wire Wire Line
	6450 3400 6450 4350
Wire Wire Line
	4500 3400 6450 3400
Wire Wire Line
	6250 3450 6250 4350
Wire Wire Line
	4550 3450 6250 3450
Wire Wire Line
	6150 3550 6150 4350
Wire Wire Line
	4650 3550 6150 3550
Wire Wire Line
	6050 3600 6050 4350
Wire Wire Line
	4700 3600 6050 3600
Wire Wire Line
	5950 3700 5950 4350
Wire Wire Line
	4800 3700 5950 3700
Wire Wire Line
	5850 3750 5850 4350
Wire Wire Line
	4850 3750 5850 3750
Wire Wire Line
	5750 3850 5750 4350
Wire Wire Line
	4950 3850 5750 3850
Wire Wire Line
	5650 3900 5650 4350
Wire Wire Line
	5000 3900 5650 3900
Wire Wire Line
	4500 6250 5100 6250
Wire Wire Line
	5100 6250 5100 4000
Wire Wire Line
	5100 4000 5550 4000
Wire Wire Line
	5550 4000 5550 4350
Wire Wire Line
	4500 6450 5150 6450
Wire Wire Line
	5150 6450 5150 4050
Wire Wire Line
	5150 4050 5450 4050
Wire Wire Line
	5450 4050 5450 4350
Wire Wire Line
	6350 4750 6350 7400
Wire Wire Line
	6350 7400 1450 7400
Connection ~ 1450 7400
Wire Wire Line
	5650 7050 5650 4750
Wire Wire Line
	4500 7050 5650 7050
Wire Wire Line
	5750 7250 5750 4750
Wire Wire Line
	4500 7250 5750 7250
$Comp
L Switch:SW_Push SW13
U 1 1 5F6D38A1
P 6750 6000
F 0 "SW13" H 6750 6285 50  0000 C CNN
F 1 "SW_Push" H 6750 6194 50  0000 C CNN
F 2 "Launchbox:Pushbutton" H 6750 6200 50  0001 C CNN
F 3 "~" H 6750 6200 50  0001 C CNN
	1    6750 6000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW15
U 1 1 5F6D7EE9
P 7350 6000
F 0 "SW15" H 7350 6285 50  0000 C CNN
F 1 "SW_Push" H 7350 6194 50  0000 C CNN
F 2 "Launchbox:Pushbutton" H 7350 6200 50  0001 C CNN
F 3 "~" H 7350 6200 50  0001 C CNN
	1    7350 6000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW14
U 1 1 5F6D856D
P 6750 6450
F 0 "SW14" H 6750 6735 50  0000 C CNN
F 1 "SW_Push" H 6750 6644 50  0000 C CNN
F 2 "Launchbox:Pushbutton" H 6750 6650 50  0001 C CNN
F 3 "~" H 6750 6650 50  0001 C CNN
	1    6750 6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW16
U 1 1 5F6D9158
P 7350 6450
F 0 "SW16" H 7350 6735 50  0000 C CNN
F 1 "SW_Push" H 7350 6644 50  0000 C CNN
F 2 "Launchbox:Pushbutton" H 7350 6650 50  0001 C CNN
F 3 "~" H 7350 6650 50  0001 C CNN
	1    7350 6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW17
U 1 1 5F6D96EF
P 7900 6250
F 0 "SW17" H 7900 6535 50  0000 C CNN
F 1 "SW_Push" H 7900 6444 50  0000 C CNN
F 2 "Launchbox:Pushbutton" H 7900 6450 50  0001 C CNN
F 3 "~" H 7900 6450 50  0001 C CNN
	1    7900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5600 6450 6000
Wire Wire Line
	6450 6450 6550 6450
Wire Wire Line
	6450 5600 7100 5600
Wire Wire Line
	6550 6000 6450 6000
Connection ~ 6450 6000
Wire Wire Line
	6450 6000 6450 6450
Wire Wire Line
	7150 6000 7100 6000
Wire Wire Line
	7100 6000 7100 5600
Connection ~ 7100 5600
Wire Wire Line
	7100 6000 7100 6450
Wire Wire Line
	7100 6450 7150 6450
Connection ~ 7100 6000
Wire Wire Line
	7700 6250 7700 5600
Wire Wire Line
	6950 6000 6950 5100
Wire Wire Line
	6950 5100 5850 5100
Wire Wire Line
	5850 5100 5850 4750
Wire Wire Line
	6950 6450 7000 6450
Wire Wire Line
	7000 6450 7000 5150
Wire Wire Line
	7000 5150 5950 5150
Wire Wire Line
	5950 5150 5950 4750
Wire Wire Line
	6050 5200 6050 4750
Wire Wire Line
	7550 6450 7650 6450
Wire Wire Line
	7650 6450 7650 5250
Wire Wire Line
	7650 5250 6150 5250
Wire Wire Line
	6150 5250 6150 4750
Wire Wire Line
	7550 6000 7600 6000
Wire Wire Line
	7600 6000 7600 5200
Wire Wire Line
	6050 5200 7600 5200
$Comp
L Launchbox:Teensy3.6 U1
U 1 1 5F6324D3
P 6450 4550
F 0 "U1" H 5065 4504 50  0000 R CNN
F 1 "Teensy3.6" H 5065 4595 50  0000 R CNN
F 2 "Launchbox:Teensy 3.6" H 6150 4900 50  0001 C CNN
F 3 "" H 6150 4900 50  0001 C CNN
	1    6450 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 6250 8150 6250
Wire Wire Line
	8150 6250 8150 5300
Wire Wire Line
	8150 5300 6250 5300
Wire Wire Line
	6250 5300 6250 4750
$Comp
L Device:Battery_Cell BT1
U 1 1 5F6591D9
P 9450 5550
F 0 "BT1" H 9568 5646 50  0000 L CNN
F 1 "Battery_Cell" H 9568 5555 50  0000 L CNN
F 2 "Launchbox:Lipo_Battery_Connector" V 9450 5610 50  0001 C CNN
F 3 "~" V 9450 5610 50  0001 C CNN
	1    9450 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F65AABE
P 9450 5650
F 0 "#PWR03" H 9450 5400 50  0001 C CNN
F 1 "GND" H 9455 5477 50  0000 C CNN
F 2 "" H 9450 5650 50  0001 C CNN
F 3 "" H 9450 5650 50  0001 C CNN
	1    9450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5100 7750 4750
Wire Wire Line
	7100 5600 7400 5600
Wire Wire Line
	7750 5100 7400 5100
Wire Wire Line
	7400 5100 7400 5600
Connection ~ 7400 5600
Wire Wire Line
	7400 5600 7700 5600
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5F667F69
P 9000 5100
F 0 "U2" H 9000 5249 50  0000 C CNN
F 1 "L7805" H 9000 5340 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220F-3_Horizontal_TabDown" H 9025 4950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 9000 5050 50  0001 C CNN
	1    9000 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9450 5350 9450 5100
Wire Wire Line
	9450 5100 9300 5100
Wire Wire Line
	8700 5100 7750 5100
Connection ~ 7750 5100
$Comp
L power:GND #PWR04
U 1 1 5F6739D8
P 10000 5100
F 0 "#PWR04" H 10000 4850 50  0001 C CNN
F 1 "GND" H 10005 4927 50  0000 C CNN
F 2 "" H 10000 5100 50  0001 C CNN
F 3 "" H 10000 5100 50  0001 C CNN
	1    10000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4800 10000 4800
Wire Wire Line
	10000 4800 10000 5100
$Comp
L power:GND #PWR02
U 1 1 5F679FA6
P 8350 4350
F 0 "#PWR02" H 8350 4100 50  0001 C CNN
F 1 "GND" H 8355 4177 50  0000 C CNN
F 2 "" H 8350 4350 50  0001 C CNN
F 3 "" H 8350 4350 50  0001 C CNN
	1    8350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4350 7750 4150
Wire Wire Line
	7750 4150 8350 4150
Wire Wire Line
	8350 4150 8350 4350
$Comp
L Launchbox-rescue:SerialScrewTerminals-Launchbox U3
U 1 1 5F6BF8D6
P 9200 6300
F 0 "U3" H 9408 6209 50  0000 L CNN
F 1 "SerialScrewTerminals" H 9408 6118 50  0000 L CNN
F 2 "Launchbox:ScrewTerminals" H 9150 6300 50  0001 C CNN
F 3 "" H 9150 6300 50  0001 C CNN
	1    9200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4750 5450 5450
Wire Wire Line
	5450 5450 8700 5450
Wire Wire Line
	8700 5450 8700 6400
Wire Wire Line
	8700 6400 9200 6400
Wire Wire Line
	9200 6400 9200 6300
Wire Wire Line
	8900 6200 8750 6200
Wire Wire Line
	8750 6200 8750 5400
Wire Wire Line
	8750 5400 5550 5400
Wire Wire Line
	5550 5400 5550 4750
$Comp
L power:GND #PWR05
U 1 1 5F6D4719
P 10100 6300
F 0 "#PWR05" H 10100 6050 50  0001 C CNN
F 1 "GND" H 10105 6127 50  0000 C CNN
F 2 "" H 10100 6300 50  0001 C CNN
F 3 "" H 10100 6300 50  0001 C CNN
	1    10100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 6200 10100 6200
Wire Wire Line
	10100 6200 10100 6300
$EndSCHEMATC
