#!/bin/bash
A="2039";B=0;C=0;D=0;
until [ $B -eq 1 ]; do
	E=$(t update "This tweet is the best tweet https://twitter.com/notnowwww/status/$A");D=${E[@]:51:18}
	if [ $A -eq $D ]; then
		B=1;exit
	fi
	F=$(($D-$C));A=$(($D+$F));yes|t delete status $D;C=${E[@]:51:18}
done