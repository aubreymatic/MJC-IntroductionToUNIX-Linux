#!/bin/bash
# calc_coins
# due 9/30/2015 @ 11:59 PM
# cgolpashin1/Chris Golpashin

TD=$(date +%m"/"%d"/"%Y"-"%H":"%M":"%S)

echo "Please enter your name."
read  NAME
echo "How many quarters do you have?"
read quarters
echo "How many dimes do you have?"
read dimes
echo "How many nickels do you have?"
read nickels
echo "How many pennies do you have?"
read pennies

# converting and totaling
quartersC=$(echo "$quarters * .25" | bc)
dimesC=$(echo "$dimes * .1" | bc)
nickelsC=$(echo "$nickels * 0.05" | bc)
penniesC=$(echo "$pennies * 0.01" | bc)
Total=$(echo "$quartersC + $dimesC + $nickelsC + $penniesC" | bc)

echo ""
echo "Hello $NAME, you have $Total in change."
echo $TD"|"$NAME"|"$Total >> logfile_calc_coins.txt
