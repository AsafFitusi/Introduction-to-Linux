#!/bin/bash
read -p "Enter a number: " num1
if [ 100 -gt "$num1" -a "$num1" -gt 10 ] ;then
   echo "$num1 is between 10 and 100"
fi 
 
