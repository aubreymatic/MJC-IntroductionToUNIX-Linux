#!/bin/bash
# cgolpashin1
#mkmypage

echo $HDR > ~/public_html/boss.html
echo "A list of users and the time they have spent in minutes." >> ~/public_html/boss.html
USERS="$(last | awk '{print $1}' | sort | uniq | grep -v "wtmp")"

for user in $USERS;
do
times="$(last $user | awk '{print $10}' | grep -v "in" | sed 's/[()]//g')"
TimeEdit1="$(echo $times | tr 'n' ' ')"
Epoch='jan 1 1970'
TotalTime=0
for t in $TimeEdit1;
do
TotalTime="$(date -u -d "$Epoch $t" +%s) + $TotalTime"

done
echo $user >> ~/public_html/boss.html
TotalMinutes="$(echo $((TotalTime / 60)))"
echo $TotalMinutes "minutes" >> ~/public_html/boss.html
done
echo $FTR >> ~/public_html/boss.html
# I don't know why my amount of time is 0, but i'm not willing to mess it up when I think it's working.

