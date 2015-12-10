#!/bin/bash
# Chris Golpashin
# Lab 2
# Amount of time alive
# 9/16/2015

# asking the user for his or her information
echo "Please enter your name"
read NAME
echo "Please enter your birthdate in this format MM/DD/YYYY"
read DOB

# calculating and also storing information into variables
TodayDate=$(date +%s)
YourBirthdate=$(date -d"$DOB" +%s)
SecondsAlive=$(($TodayDate-$YourBirthdate))
DaysAlive=$(($SecondsAlive/86400))
YearsAlive=$(($DaysAlive/365))

# displaying the information
echo " "
echo -n "Your name is "
echo $NAME
echo -n "You have been alive for "
echo -n $SecondsAlive
echo " seconds."
echo -n "You also have been alive for "
echo -n $DaysAlive
echo " days."
echo -n "You have also been alive for "
echo -n $YearsAlive
echo " Years."
echo "Here is your fortune:"
echo $(fortune)
