#!/bin/sh
num=$#
if [ $num -lt 2 ];
then
	return 1
fi
 
filesdir=$1
searchstr=$2

if test $filesdir 
then
	nolines=$(ls $filesdir | grep $searchstr | wc -l)
	echo $nolines
	nofiles=$(ls $filesdir | wc -l)
	echo "The number of files are $nofiles and the number of matching lines are $nolines"
else
	return 1
fi
