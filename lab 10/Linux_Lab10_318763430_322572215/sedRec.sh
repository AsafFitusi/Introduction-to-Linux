#!/bin/bash
function sedRec {
    for file in "$1"/*; do
      if [ -d "$file" ]; then
         sedRec "$file"
      elif [[ "$file" == *.txt ]]; then
           sed -i 's/2024/2025/g' "$file"
      fi
    done
}
sedRec "$(pwd)"
