  #!/bin/bash
read -p "Enter a String: " str1
if [ -f $str1 ]; then
  echo "the file with the $str1 exist."
else
  echo "the file with the $str1 dosent exist."
  touch $str1
fi



if [ -d ${str1}dir  ]; then
   echo "the diractory with the ${str1}dir exist."
else
   echo "the diractory with the ${str1}dir dosent exist."
   mkdir ${str1}dir
fi 
mv $str1 ${str1}dir
