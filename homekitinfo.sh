#!/bin/sh

LOGFILE=logfile.txt
USER=root
PASSWORD=alpine
IP=192.168.1.246

#On se connecte à l'iphone et on lui passe la commande ioReg
sshpass -p $PASSWORD ssh -q -o StrictHostKeyChecking=no $USER@$IP > $LOGFILE <<ENDSSH
ioreg -l -w0| grep \"CurrentCapacity
exit
ENDSSH

#On garde que les chiffres
sed -i 's/[^0-9]*//g' $LOGFILE

#on renvoie l'info
cat $LOGFILE
rm $LOGFILE

