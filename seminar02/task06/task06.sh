#! /bin/bash
cat urls.txt | egrep -noh "https://.*\..../" | sed -e 's/^/<</' -e 's/$/>>/'
