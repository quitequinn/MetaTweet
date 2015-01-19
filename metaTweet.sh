until [ $SUCCESS -eq 1 ]; do
	TWEET=$(t update "This tweet is the best tweet https://twitter.com/notnowwww/status/$URL")
	num1=${TWEET[@]:51:18}
	if [ $URL -eq $num1 ]; then
		SUCCESS=1
		exit
	fi
	MIN=$(($num1-$num1save))
	echo $MIN
	URL=$(($num1+$MIN))
	yes | t delete status $num1
	num1save=${TWEET[@]:51:18}
done