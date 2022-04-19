#! /bin/bash

dircount=$(find $1 -type d|wc -l)

filecount=$(find $1 -type f|wc -l)

# $1 and $2 acting as arg for an file ./dirinfo.sh dir name 

echo "There are $dircount directories in the directory $1"

echo "There are $filecount files in the directory $1"