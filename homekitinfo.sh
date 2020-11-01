#!/bin/sh

LOGFILE=logfile.txt
USER=root
PASSWORD=alpine
IP=<IP OF JAILBROKEN IPHONE>

#Connection to iphone in SSH
sshpass -p $PASSWORD ssh -q -o StrictHostKeyChecking=no $USER@$IP > $LOGFILE <<ENDSSH
ioreg -l -w0| grep \"CurrentCapacity
exit
ENDSSH

#We keep only the numbers
sed -i 's/[^0-9]*//g' $LOGFILE

#Send results and purge temp file
cat $LOGFILE
rm $LOGFILE

