#!/bin/bash
read -p "Enter a number: " num1
file_count=$(ls -1 | wc -l)

if [ "$file_count" -eq "$num1" ]; then
  echo "the number of files and directories matches the given number"
else
  echo "the number of files and directories does not match the given number"
fi
