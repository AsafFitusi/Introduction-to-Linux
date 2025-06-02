#!/bin/bash
num=1
for file in $(ls *k* ); do
  mv "$file" "${file}${num}"
  ((num++))
done
ls *k* | sort -t "k" -k 2 > FileList
