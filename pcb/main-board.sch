EESchema Schematic File Version 4
LIBS:main-board-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_UART:MAX481E U3
U 1 1 5E3F2BBA
P 7850 1300
F 0 "U3" H 7600 1750 50  0000 C CNN
F 1 "MAX481E" H 8050 1750 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 7850 600 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 7850 1350 50  0001 C CNN
	1    7850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1150 8250 1200
Wire Wire Line
	8250 1550 8250 1500
NoConn ~ 7450 1500
$Comp
L power:GNDD #PWR013
U 1 1 5E405312
P 7850 1900
F 0 "#PWR013" H 7850 1650 50  0001 C CNN
F 1 "GNDD" H 7854 1745 50  0000 C CNN
F 2 "" H 7850 1900 50  0001 C CNN
F 3 "" H 7850 1900 50  0001 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR01
U 1 1 5E4060C7
P 7850 800
F 0 "#PWR01" H 7850 650 50  0001 C CNN
F 1 "+5VD" H 7865 973 50  0000 C CNN
F 2 "" H 7850 800 50  0001 C CNN
F 3 "" H 7850 800 50  0001 C CNN
	1    7850 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR012
U 1 1 5E40D9EE
P 9150 1700
F 0 "#PWR012" H 9150 1450 50  0001 C CNN
F 1 "GNDD" H 9154 1545 50  0000 C CNN
F 2 "" H 9150 1700 50  0001 C CNN
F 3 "" H 9150 1700 50  0001 C CNN
	1    9150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5E931A23
P 5450 3100
F 0 "#PWR015" H 5450 2950 50  0001 C CNN
F 1 "+5V" H 5465 3273 50  0000 C CNN
F 2 "" H 5450 3100 50  0001 C CNN
F 3 "" H 5450 3100 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5E949DBC
P 1950 1200
F 0 "#PWR05" H 1950 1050 50  0001 C CNN
F 1 "+5V" H 1965 1373 50  0000 C CNN
F 2 "" H 1950 1200 50  0001 C CNN
F 3 "" H 1950 1200 50  0001 C CNN
	1    1950 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E94D953
P 1950 1300
F 0 "#PWR06" H 1950 1050 50  0001 C CNN
F 1 "GND" H 1955 1127 50  0000 C CNN
F 2 "" H 1950 1300 50  0001 C CNN
F 3 "" H 1950 1300 50  0001 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1200 1950 1200
Wire Wire Line
	1450 1300 1950 1300
Wire Wire Line
	6250 4900 6600 4900
Text Label 6300 4900 0    50   ~ 0
DMX_RX
$Comp
L MCU_Espressif:ESP32 U4
U 1 1 5E92C2AC
P 5350 4150
F 0 "U4" H 4600 5100 50  0000 C CNN
F 1 "ESP32" H 6000 5100 50  0000 C CNN
F 2 "Module:ESP32_DOIT30" H 5350 2850 50  0001 C CNN
F 3 "http://espressif.com/sites/default/files/documentation/0a-esp8266ex_datasheet_en.pdf" H 5400 2850 50  0001 C CNN
	1    5350 4150
	1    0    0    -1  
$EndComp
NoConn ~ 4450 4900
NoConn ~ 4450 5000
$Comp
L Regulator_Switching:TMA_0505S U1
U 1 1 5E9BA76B
P 3200 1300
F 0 "U1" H 3200 1767 50  0000 C CNN
F 1 "DMX Input 5V Isolation" H 3200 1676 50  0000 C CNN
F 2 "Converter_DCDC:Traco_TMA_DCDCsingle" H 3200 950 50  0001 C CNN
F 3 "http://assets.tracopower.com/TMR1/documents/tmr1-datasheet.pdf" H 3200 800 50  0001 C CNN
	1    3200 1300
	1    0    0    -1  
$EndComp
$Comp
L Isolator:6N136 U2
U 1 1 5E9BE7CA
P 6050 1300
F 0 "U2" H 6050 1725 50  0000 C CNN
F 1 "6N136" H 6050 1634 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5850 1000 50  0001 L CIN
F 3 "https://optoelectronics.liteon.com/upload/download/DS70-2008-0032/6N135-L%206N136-L%20series.pdf" H 6050 1300 50  0001 L CNN
	1    6050 1300
	-1   0    0    1   
$EndComp
NoConn ~ 4450 5100
Wire Wire Line
	5300 5400 5300 5500
Wire Wire Line
	5300 5500 5350 5500
Wire Wire Line
	5400 5500 5400 5400
$Comp
L power:GND #PWR018
U 1 1 5EDE749C
P 5350 5500
F 0 "#PWR018" H 5350 5250 50  0001 C CNN
F 1 "GND" H 5355 5327 50  0000 C CNN
F 2 "" H 5350 5500 50  0001 C CNN
F 3 "" H 5350 5500 50  0001 C CNN
	1    5350 5500
	1    0    0    -1  
$EndComp
Connection ~ 5350 5500
Wire Wire Line
	5350 5500 5400 5500
Wire Wire Line
	5450 3100 5450 3150
Wire Wire Line
	5450 3150 5400 3150
$Comp
L power:+5VD #PWR04
U 1 1 5EE12407
P 3850 1050
F 0 "#PWR04" H 3850 900 50  0001 C CNN
F 1 "+5VD" H 3865 1223 50  0000 C CNN
F 2 "" H 3850 1050 50  0001 C CNN
F 3 "" H 3850 1050 50  0001 C CNN
	1    3850 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1050 3850 1100
Wire Wire Line
	3850 1100 3700 1100
$Comp
L power:GNDD #PWR010
U 1 1 5EE221FE
P 3850 1550
F 0 "#PWR010" H 3850 1300 50  0001 C CNN
F 1 "GNDD" H 3854 1395 50  0000 C CNN
F 2 "" H 3850 1550 50  0001 C CNN
F 3 "" H 3850 1550 50  0001 C CNN
	1    3850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1500 3850 1500
Wire Wire Line
	3850 1500 3850 1550
$Comp
L power:+5V #PWR03
U 1 1 5EE2EA21
P 2550 1050
F 0 "#PWR03" H 2550 900 50  0001 C CNN
F 1 "+5V" H 2565 1223 50  0000 C CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "" H 2550 1050 50  0001 C CNN
	1    2550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1050 2550 1100
Wire Wire Line
	2550 1100 2700 1100
$Comp
L power:GND #PWR09
U 1 1 5EE3271E
P 2550 1550
F 0 "#PWR09" H 2550 1300 50  0001 C CNN
F 1 "GND" H 2555 1377 50  0000 C CNN
F 2 "" H 2550 1550 50  0001 C CNN
F 3 "" H 2550 1550 50  0001 C CNN
	1    2550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1550 2550 1500
Wire Wire Line
	2550 1500 2700 1500
$Comp
L Device:R R3
U 1 1 5EE3EAAF
P 8450 1350
F 0 "R3" H 8520 1396 50  0000 L CNN
F 1 "120R" H 8520 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8380 1350 50  0001 C CNN
F 3 "~" H 8450 1350 50  0001 C CNN
	1    8450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1500 8450 1550
Wire Wire Line
	8450 1550 8250 1550
Wire Wire Line
	8450 1200 8450 1150
Wire Wire Line
	8450 1150 8250 1150
Wire Wire Line
	7450 1300 7400 1300
Wire Wire Line
	7400 1300 7400 1350
Wire Wire Line
	7400 1400 7450 1400
NoConn ~ 5750 1400
$Comp
L power:GNDD #PWR07
U 1 1 5ED0C11D
P 7200 1450
F 0 "#PWR07" H 7200 1200 50  0001 C CNN
F 1 "GNDD" H 7204 1295 50  0000 C CNN
F 2 "" H 7200 1450 50  0001 C CNN
F 3 "" H 7200 1450 50  0001 C CNN
	1    7200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1450 7200 1350
Wire Wire Line
	7200 1350 7400 1350
Connection ~ 7400 1350
Wire Wire Line
	7400 1350 7400 1400
$Comp
L Device:R R1
U 1 1 5ED11E49
P 7050 1200
F 0 "R1" V 7250 1150 50  0000 L CNN
F 1 "470R" V 7150 1100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6980 1200 50  0001 C CNN
F 3 "~" H 7050 1200 50  0001 C CNN
	1    7050 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 1200 7450 1200
$Comp
L power:+5VD #PWR011
U 1 1 5ED1D092
P 6600 1600
F 0 "#PWR011" H 6600 1450 50  0001 C CNN
F 1 "+5VD" H 6615 1773 50  0000 C CNN
F 2 "" H 6600 1600 50  0001 C CNN
F 3 "" H 6600 1600 50  0001 C CNN
	1    6600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1400 6350 1600
Wire Wire Line
	6350 1600 6600 1600
Wire Wire Line
	6350 1200 6900 1200
Wire Wire Line
	5500 900  5750 900 
Wire Wire Line
	5750 900  5750 1100
$Comp
L power:GND #PWR02
U 1 1 5ED42044
P 5500 900
F 0 "#PWR02" H 5500 650 50  0001 C CNN
F 1 "GND" H 5505 727 50  0000 C CNN
F 2 "" H 5500 900 50  0001 C CNN
F 3 "" H 5500 900 50  0001 C CNN
	1    5500 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5ED4239C
P 5200 1350
F 0 "R2" H 5270 1396 50  0000 L CNN
F 1 "4.7k" H 5270 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5130 1350 50  0001 C CNN
F 3 "~" H 5200 1350 50  0001 C CNN
	1    5200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1200 5200 1200
Connection ~ 5200 1200
Wire Wire Line
	5200 1200 4600 1200
Text Label 4600 1200 0    50   ~ 0
DMX_RX
$Comp
L power:+5V #PWR08
U 1 1 5ED4E51A
P 4950 1500
F 0 "#PWR08" H 4950 1350 50  0001 C CNN
F 1 "+5V" H 4965 1673 50  0000 C CNN
F 2 "" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1500 5200 1500
Connection ~ 5200 1500
Wire Wire Line
	5200 1500 5750 1500
$Comp
L Device:CP C2
U 1 1 5ED5C732
P 6450 5400
F 0 "C2" H 6568 5446 50  0000 L CNN
F 1 "10uF" H 6568 5355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6488 5250 50  0001 C CNN
F 3 "~" H 6450 5400 50  0001 C CNN
	1    6450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5200 6450 5200
Wire Wire Line
	6450 5200 6450 5250
$Comp
L power:GND #PWR019
U 1 1 5ED632E5
P 6450 5550
F 0 "#PWR019" H 6450 5300 50  0001 C CNN
F 1 "GND" H 6455 5377 50  0000 C CNN
F 2 "" H 6450 5550 50  0001 C CNN
F 3 "" H 6450 5550 50  0001 C CNN
	1    6450 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5ED64676
P 3850 1300
F 0 "C1" H 3965 1346 50  0000 L CNN
F 1 "470nF" H 3965 1255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W5.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 3888 1150 50  0001 C CNN
F 3 "~" H 3850 1300 50  0001 C CNN
	1    3850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1100 3850 1150
Connection ~ 3850 1100
Wire Wire Line
	3850 1450 3850 1500
Connection ~ 3850 1500
Text Label 3350 4600 0    50   ~ 0
CLK
Text Label 3350 4500 0    50   ~ 0
MOSI_CMD
Wire Wire Line
	3150 4600 4450 4600
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5EE67DEA
P 9400 1400
F 0 "J2" H 9428 1376 50  0000 L CNN
F 1 "DMX_In_Connector" H 9428 1285 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:Krone_4_Way_terminal" H 9400 1400 50  0001 C CNN
F 3 "~" H 9400 1400 50  0001 C CNN
	1    9400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1500 9150 1500
Wire Wire Line
	9150 1500 9150 1600
Wire Wire Line
	9200 1600 9150 1600
Connection ~ 9150 1600
Wire Wire Line
	9150 1600 9150 1700
Wire Wire Line
	9200 1400 8850 1400
Wire Wire Line
	8850 1400 8850 1150
Wire Wire Line
	8850 1150 8450 1150
Connection ~ 8450 1150
Wire Wire Line
	8450 1550 9050 1550
Wire Wire Line
	9050 1550 9050 1300
Wire Wire Line
	9050 1300 9200 1300
Connection ~ 8450 1550
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FCB195F
P 1250 1200
F 0 "J1" H 1358 1381 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1358 1290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1250 1200 50  0001 C CNN
F 3 "~" H 1250 1200 50  0001 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
NoConn ~ 6250 3450
NoConn ~ 6250 3550
NoConn ~ 6250 3650
NoConn ~ 6250 3750
NoConn ~ 6250 3850
NoConn ~ 6250 3950
NoConn ~ 6250 4400
NoConn ~ 6250 4500
NoConn ~ 6250 4600
NoConn ~ 6250 4700
NoConn ~ 6250 5000
NoConn ~ 4450 3450
NoConn ~ 4450 3550
NoConn ~ 4450 3750
NoConn ~ 4450 3850
NoConn ~ 4450 3950
NoConn ~ 4450 4050
NoConn ~ 4450 4400
NoConn ~ 4450 4700
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5FCD7EF6
P 2400 4150
F 0 "J3" H 2450 5267 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2450 5176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2400 4150 50  0001 C CNN
F 3 "~" H 2400 4150 50  0001 C CNN
	1    2400 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5FCDCFE4
P 3000 3250
F 0 "#PWR016" H 3000 3100 50  0001 C CNN
F 1 "+5V" H 3015 3423 50  0000 C CNN
F 2 "" H 3000 3250 50  0001 C CNN
F 3 "" H 3000 3250 50  0001 C CNN
	1    3000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3250 3000 3250
$Comp
L power:GND #PWR017
U 1 1 5FCDE994
P 2200 5150
F 0 "#PWR017" H 2200 4900 50  0001 C CNN
F 1 "GND" H 2205 4977 50  0000 C CNN
F 2 "" H 2200 5150 50  0001 C CNN
F 3 "" H 2200 5150 50  0001 C CNN
	1    2200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4750 2900 4750
Wire Wire Line
	2900 4750 2900 4500
Wire Wire Line
	2900 4500 4450 4500
Wire Wire Line
	3150 4600 3150 4250
Wire Wire Line
	3150 4250 2700 4250
NoConn ~ 2200 3250
NoConn ~ 2200 3350
NoConn ~ 2200 3450
NoConn ~ 2200 3550
NoConn ~ 2200 3650
NoConn ~ 2200 3750
NoConn ~ 2200 3850
NoConn ~ 2200 3950
NoConn ~ 2200 4050
NoConn ~ 2200 4150
NoConn ~ 2200 4250
NoConn ~ 2200 4350
NoConn ~ 2200 4450
NoConn ~ 2200 4550
NoConn ~ 2200 4650
NoConn ~ 2200 4750
NoConn ~ 2200 4850
NoConn ~ 2200 4950
NoConn ~ 2200 5050
NoConn ~ 2700 5150
NoConn ~ 2700 5050
NoConn ~ 2700 4950
NoConn ~ 2700 4850
NoConn ~ 2700 4650
NoConn ~ 2700 4550
NoConn ~ 2700 4450
NoConn ~ 2700 4350
NoConn ~ 2700 4150
NoConn ~ 2700 4050
NoConn ~ 2700 3950
NoConn ~ 2700 3850
NoConn ~ 2700 3750
NoConn ~ 2700 3650
NoConn ~ 2700 3550
NoConn ~ 2700 3450
NoConn ~ 2700 3350
NoConn ~ 2300 1950
NoConn ~ 5300 3150
$EndSCHEMATC
