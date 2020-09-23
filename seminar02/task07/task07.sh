#! /bin/bash
cat digits.txt | awk '{print $2 $1 $3 $4 $5}'
