#!/bin/bash

date=$(date +%d\ %b\ %Y)
cleanup="Cleanup $date"
dir="Cleanup/$cleanup"

mkdir -p "$dir"

# mv -vu *.html *.css *.js *.json *.sh "$dir"
find -maxdepth 1 -type f -print -exec mv '{}' "$dir" \; 

echo -e "Transfer complete"