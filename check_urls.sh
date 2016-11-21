#!/bin/bash
# @copyright Copyright 2016 Eric C. Weig 

httpUrl=$1

while true
do
  STATUS=$(curl -s -o /dev/null -w '%{http_code}' $httpUrl)
  if [ $STATUS -eq 200 ]; then
    echo "This URL returned a 200 status code.  It appears to be valid."
    break
  else
    echo "This URL returned a $STATUS status code.  It does not appear to be valid."
    echo -e "This URL returned a $STATUS status code.  $httpUrl does not appear to be a valid URL." >> invalid_urls.txt 
    break
  fi
done
