#!/bin/bash

date=$(date +%d\ %b\ %Y)
cleanup="Cleanup $date"
dir="Cleanup/$cleanup"

main (){
  if [[ $# -eq 1 ]]; then
    mv -n "$1" "$dir"
    exit 1
  fi

  mkdir -p "$dir"

# mv -vu *.html *.css *.js *.json *.sh "$dir"
# find -maxdepth 1 -type f -print -exec mv '{}' "$dir" \; 

fd --exclude={.rcloneignore,.rsyncignore} --max-depth 1 --type f --exec-batch mv '{}' "$dir" \;

# echo -e "Transfer complete"
}

main "$@"