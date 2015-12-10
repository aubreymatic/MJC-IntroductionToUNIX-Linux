#1/bin/bash
# for
# chris golpashin
#
# for loops

FUN1=$(fortune)
TD=$(date +%Y%m%d%X)
LST=$(who | cut -f1 -d" " | sort | uniq)
echo $TD"|"$FUN1 > logfile_fortune_mail.txt

for i in $LST
do
   echo FUN1 | mail -s"Fortune of the day from cgolpashin1" $i
   echo "Mail has been sent to $i"
done

