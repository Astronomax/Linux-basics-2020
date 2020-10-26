#!/bin/bash
hash1=$1
hash2=$2
git log --pretty=format:"%H %s" > res.txt
flag="0"

while read el
do  
    res=`echo $el | awk '{print $1}'`
    if [ "$hash1" = "$res" ]; then
        flag="1"
    fi
    if [ "$flag" == "1" ]; then
        echo $el | sed 's/^[0-9a-z]* //' >> release-notes.md
    fi
    if [ "$hash2" = "$res" ]; then
        flag="0"
    fi  
done < res.txt
