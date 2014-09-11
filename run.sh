#!/bin/bash

if [[ $# -ne 2 ]]
then
    echo "usage: run.sh dict codebase"
    exit 1
fi

for line in $(cat $1)
do
    grep "$line" --color=always -Hrn $2 2>/dev/null
done
