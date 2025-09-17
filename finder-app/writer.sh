if [ $# -lt 2 ]
then
	exit 1
fi



filesdir=$1
str2wr=$2

mkdir -p $filesdir
rm -d $filesdir
touch $filesdir
echo $str2wr >> $filesdir