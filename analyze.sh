#!/bin/bash

if [ "$1" == "" ]; then
  echo "No argument supplied. How to use:"
  echo "> ./analyze.sh \"Text to be analyzed, enclosed in quotation marks.\""
else
  curl -sd "text=$1" http://text-processing.com/api/sentiment/ | json_pp
fi
