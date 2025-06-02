#!/bin/bash

function change {
   sed "s/cat/dog/g" <animals.txt >updated_animals.txt
}
change 
function print {
   sed -n '2p' "$1"
}
print $1 
function replace {
   sed -i -e "s/apple/orange/g" -e "s/banana/grape/g" fruits.txt
}
replace 
function replaceBak {
   touch manual.bak
   cat manual.txt > manual.bak 
   sed -i "s/linux/Linux/g" manual.txt 
}
replaceBak
function delete {
   sed -i "10,20d" log.txt

}
delete
