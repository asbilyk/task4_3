#!/bin/bash
if [[$# -ne 2]]
then
echo "Wrong parameters"
exit
fi
if [[-n $1]]
then
echo "Folder doesn\'t exist"
exit
fi
DIR=$1
NOW=$(date +"%d-%m-%Y")
NAME=$(sed -e 's/\//; s/\//-/' DIR)
BACKUP='/tmp/backups/'
if [$2 -lt $(ls $BACKUP/$NAME*|wc -l)]
then
#$NAME|xargs rm -rf
fi
 
