#!/bin/sh
num=$#
if [ $num -lt 2 ];
then
	exit 1
fi
 
filesdir=$1
searchstr=$2

if test $filesdir 
then
	nolines=$(grep -rnw $filesdir -e $searchstr | wc -l)
	nofiles=$(ls $filesdir | wc -l)
	echo "The number of files are $nofiles and the number of matching lines are $nolines"
else
	exit 1
fi
