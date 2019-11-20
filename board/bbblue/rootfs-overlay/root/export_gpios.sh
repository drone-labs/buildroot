#!/bin/sh

# System IOs
# Done in ardupilot (trick to enable gpios...)
# A16/GPIO0_5, I2C1_SCL
# V12/GPIO2_1, MCASP0_FSR (->Bluetooth Module)
# K18/GPIO3_9, WL_EN (->Wifi Module)

# Leds
#  T7/GPIO2_3 (65), LED_GRN
#  R7/GPIO2_2 (64), LED_RED
# V15/GPIO1_21(53), USR_LED0
# U15/GPIO1_22(54), USR_LED1
# T15/GPIO1_23(55), USR_LED2
# V16/GPIO1_24(56), USR_LED3
# U12/GPIO0_27(27), BATT_LED0
#  T5/GPIO0_11(11), BATT_LED1
#  V6/GPIO1_29(61), BATT_LED2
# T11/GPIO0_26(26), BATT_LED3
for pin in 65 66 53 54 55 56 27 11 61 26
  do
    if [ ! -L /sys/class/gpio/gpio$pin ]; then
      echo $pin > /sys/class/gpio/export
      echo "SymLink /sys/class/gpio/gpio$pin created"
      sleep 0.5
    else
      echo "SymLink /sys/class/gpio/gpio$pin exists"
    fi
  
  done

# GP0 and GP1 Connectors
# U16/GPIO1_25(57) , pin 0.3
# V14/GPIO1_17(49) , pin 0.4
# D13/GPIO3_20(116), pin 0.5
# C12/GPIO3_17(113), pin 0.6
#    /GPI03_2 (98) , pin 1.3
#    /GPIO3_1,(97) , pin 1.4
for pin in 57 49 116 113 98 97
  do
    if [ ! -L /sys/class/gpio/gpio$pin ]; then
      echo $pin > /sys/class/gpio/export
      echo "SymLink /sys/class/gpio/gpio$pin created"
      sleep 0.5
    else
      echo "SymLink /sys/class/gpio/gpio$pin exists"
    fi
  done

# PWM Servo Outputs
#  U5/GPIO2_22(86), SVO1
#  V5/GPIO2_24(88), SVO2
#  R5/GPIO2_23(87), SVO3
#  R6/GPIO2_25(89), SVO4
#  T3/GPIO2_12(76), SVO5
#  T4/GPIO2_13(77), SVO6
#  T1/GPIO2_10(74), SVO7
#  T2/GPIO2_11(75), SVO1
#  U3/GPIO2_16(80), SVO1
for pin in  74 75 76 77 80 86 87 88 89
  do
    if [ ! -L /sys/class/gpio/gpio$pin ]; then
      echo $pin > /sys/class/gpio/export
      echo "SymLink /sys/class/gpio/gpio$pin created"
      sleep 0.5
    else
      echo "SymLink /sys/class/gpio/gpio$pin exists"
    fi
  done
