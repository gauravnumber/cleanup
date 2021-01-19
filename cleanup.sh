#!/bin/bash

date=$(date +%d\ %b\ %Y)
cleanup="Cleanup $date"
dir="Cleanup/$cleanup"

# echo $date

mkdir -p "$dir"

mv -u *.html *.css *.js *.json *.sh "$dir"

echo -e "Transfer complete"
