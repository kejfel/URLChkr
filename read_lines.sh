#!/bin/bash

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Checking URL from file: $line"
    sh ./check_urls.sh "$line"
done < $1
