#!/bin/bash

# transferring to the home directory first
cd

# creating a folder
mkdir -p TXT

# initializing the counter
counter=0

# starting the for loop to iterate through the .txt files
for i in *.txt; do
    if [ -e "$i" ]; then # checking if the file exists first
        ((counter++)) # incrementing the counter
        mv "$i" ~/TXT # moving the file to the TXT folder which is located in the home directory
    fi
done
    
# printing out the statement with how many files were moved
echo "$counter txt files moved"

