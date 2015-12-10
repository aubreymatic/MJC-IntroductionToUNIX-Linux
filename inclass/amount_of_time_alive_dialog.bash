#!/bin/bash
# Chris Golpashin
# Lab 8
# Amount of time alive_dialog
# 11/4/2015

# asking the user for his or her information
dialog --inputbox "Enter your name:" 8 40 2>/tmp/inputboxNAME
clear
NAME=$(cat /tmp/inputboxNAME)
dialog --inputbox "Please enter your birthdate in this format MM/DD/YYYY" 0 0 2>/tmp/inputboxDOB
clear
DOB=$(cat /tmp/inputboxDOB)

# calculating and also storing information into variables
TodayDate=$(date +%s)
YourBirthdate=$(date -d"$DOB" +%s)
SecondsAlive=$(($TodayDate-$YourBirthdate))
DaysAlive=$(($SecondsAlive/86400))
YearsAlive=$(($DaysAlive/365))
YourFortune=$(fortune)

# displaying the information
dialog --title 'Your name' --msgbox $NAME 10 40
clear
dialog --title 'Seconds you are alive' --msgbox $SecondsAlive 10 40
clear
dialog --title 'Days you are alive' --msgbox $DaysAlive 10 40
clear
dialog --title 'Years you are alive' --msgbox $YearsAlive 10 40
clear
dialog --title 'Here is your fortune' --msgbox $YourFortune 10 40
clear

