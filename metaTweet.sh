#!/bin/bash
URL="0"
num1save=0
num1=0

while :; do
	TWEET=$(t update "This tweet is the best tweet https://twitter.com/notnowwww/status/$URL")
	num1=${TWEET[@]:51:18}
	if [ $URL -eq $num1 ]; then
		exit
	fi
	MIN=$(($num1-$num1save))
	echo $MIN
	URL=$(($num1+$MIN))
	yes | t delete status $num1
	num1save=$num1
done