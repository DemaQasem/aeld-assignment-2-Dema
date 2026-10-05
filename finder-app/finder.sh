#!/bin/sh

filesdir=$1
searchstr=$2

echo "The number of passed arguments: $#"
if [ $# -lt 2 ]; then
	echo "Missing argument, the number of arguments should be 2 : the first argument is the target directory and the second argument is the text you want to search for"
	exit 1
else 
if [ -d "$1" ]; then
	echo "Valid directory"
	
	grep -rl --exclude="searchResults.txt" $searchstr $filesdir > FilesCount.txt
	X=$(wc -l < FilesCount.txt)
	
	grep -r --exclude="searchResults.txt" $searchstr $filesdir > searchResults.txt
	Y=$(wc -l < searchResults.txt)
	
	echo "The number of files are $X and the number of matching lines are $Y"
else
	echo "not a valid directory"
	exit 1
fi
exit 0
fi

