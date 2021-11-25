#!/bin/bash

echo "How many passwords shall be generated?"
read count

echo "How long shall the generated passwords be?"
read length

echo "Generating password and storing them to passwordlist.txt..."

for (( i=1 ; i<=$count ; i++ ))
do
	pw=$(pwgen -c -n -s -B $length 1)
	echo $i $pw >> passwordlist.txt
done

echo "Done!"
