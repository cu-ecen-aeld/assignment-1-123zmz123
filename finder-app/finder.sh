#!/bin/bash
set -e

#variable declare
filesdir=$1
searchstr=$2



if [ -z $filesdir ] || [ -z $searchstr ]
then
echo there are 2 parameters pls specify them
exit 1
fi

if ! [ -d $filesdir ] 
then
echo the $filesdir is not a directory
exit 1
fi

FILES_CNT=$( ls $filesdir | wc -l )


CONTENT_MATCHS=$( grep -r $searchstr $filesdir | wc -l )


echo The number of files are $FILES_CNT and the number of matching lines are $CONTENT_MATCHS
