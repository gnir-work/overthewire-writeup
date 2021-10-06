#!/bin/sh

current_level_name=$1
prev_level_name=narnia$(($(echo $current_level_name | sed -r 's/^([^.]+).*$/\1/; s/^[^0-9]*([0-9]+).*$/\1/') - 1))
next_level_name=narnia$(($(echo $current_level_name | sed -r 's/^([^.]+).*$/\1/; s/^[^0-9]*([0-9]+).*$/\1/') + 1))

if [ ! $# -eq 1 ]
then
    echo "Usage: ./new_level LEVEL_NAME"
    exit 1
fi

if [ -d ./$current_level_name ] 
then
    echo "A folder already exists for Level "$current_level_name
    exit 1
fi

if [ ! -d ./$prev_level_name ] 
then
    echo "Please clear level "$prev_level_name" First!"
    exit 1 
fi

if [ ! -s $prev_level_name/next_level_pass.txt ]
then
    echo "Please save the password to level "$prev_level_name" in "$prev_level_name/next_level_pass.txt" first!"
    exit 1
fi 

cp -R ./template $1

cp ./$prev_level_name/next_level_pass.txt ./$current_level_name/current_level_pass.txt
touch ./$current_level_name/next_level_pass.txt

sed '0,/{{ level_name }}/s//'$next_level_name'/' template/next_level.sh > $current_level_name/next_level.sh
sed '0,/{{ level_name }}/s//'$current_level_name'/' template/current_level.sh > $current_level_name/current_level.sh