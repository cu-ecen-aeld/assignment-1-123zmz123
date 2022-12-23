#!/bin/bash
set -e

writefile=$1
writestr=$2

if [ -z $writefile ] || [ -z $writestr ]
then
echo there are 2 parameters pls specify them
exit 1
fi

dir=$(dirname $writefile)
filename=$(basename $writefile)

mkdir -p $dir
echo $writestr > $writefile