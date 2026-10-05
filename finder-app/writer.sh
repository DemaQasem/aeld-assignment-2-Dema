#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
	echo "Missing argument, the number of arguments should be 2 : the first argument is the target filename and the second argument is the text you want to write inside that file"
	exit 1
else 
	echo "Valid Arguments Number"
	DirectoryName=$(dirname "$writefile")
	echo "$DirectoryName"
	if [ -d $DirectoryName ]; then
		touch $writefile
		echo "$writestr" > $writefile
		echo "Successfull"
		exit 0
	else
		echo "error: no such directory, creating new directory(s)"
		mkdir -p $DirectoryName
		touch $writefile
		echo "$writestr" > $writefile
		exit 0
	fi
	
fi

