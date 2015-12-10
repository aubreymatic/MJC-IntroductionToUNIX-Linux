#!bin/bash
# seconds_alive
# 

BDAY=$(date --date="7/4/1976" +%s)
SDAY=$(date +%s)
echo "The epoch date of your birth ... " $BDAY 
echo "The epoch date of today "$SDAY
SUM=$(($SDAY-$BDAY))
echo -n "You have been alive " $SUM 
echo " seconds."

