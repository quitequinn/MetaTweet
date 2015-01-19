#!/bin/bash
A="0";C=0;D=0;
while :; do
	E=$(t update "This tweet is the best tweet https://twitter.com/notnowwww/status/$A");D=${E[@]:51:18}
	if [ $A -eq $D ]; then
		exit
	fi
	F=$(($D-$C));A=$(($D+$F));yes|t delete status $D;C=$D
done