#!/bin/bash
if ["$@" != 0 ]
then
  exit
  echo "Wrong parameters"
fi
if [-z "$1"]
then
  echo "Folder doesn\'t exist"
fi
DIR="$1"
NOW=$(date +"%d-%m-%Y")
NAME=$(sed -e 's/\//; s/\//-/' $DIR)
BACKUP='/tmp/backups/'
if [-d $BACKUP]; then
  echo 'folder exist'>/dev/null
else
  mkdir $BACKUP
fi
if [$2 -lt $(ls $BACKUP/$NAME*|wc -l)]
then
  $NAME|xargs rm -rf
fi
tar -czvf $BACKUP/$NAME.tar.gz $DIR  
 
