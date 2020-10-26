#!/bin/bash

f='^issue-[0-9]* .*'

if ! grep -qE "$f" "$1"; then
	echo "Something went wrong."
	exit 1
fi
