#! /bin/bash
#1.3 data filter
FROMFILE=$1
TOFILE=$2

rm -rf $TOFILE
touch $TOFILE

if [ ! $# -eq 2 ];then
	echo "USAGE: COMMAND FROMFILE TOFILE"
	exit 1
fi

sed '/^.*\t.*\t.*\t.*\t[:blank:]*\t/d' $FROMFILE &>$TOFILE
sed -i '/^.*\t.*\t.*\t.*\t.*\t[:blank:]*\t/d' $TOFILE

#while read LINE;do
#	MYUID=`echo $LINE | cut -f5`
#	WORD=`echo $LINE | cut -f6`
#	if [ -n "$MYUID" ] && [ -n "$WORD" ];then
#		echo $LINE >> $TOFILE
#	fi 
#done < $FROMFILE
