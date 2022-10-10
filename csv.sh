#!/bin/bash

diff --changed-group-format='%<%>' --unchanged-group-format='' $1 $2 > /tmp/3.csv
awk 'NR%2==0' /tmp/3.csv > 3.csv

if [ -s 3.csv ]; then
        cat 3.csv
else
        rm -f /tmp/3.csv 3.csv
        echo "no hay diferencias"
fi
