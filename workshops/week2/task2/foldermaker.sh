#!/bin/bash

read -p'Type the name of the folder you would like to create: ' folderName
#echo "$folderName"
mkdir $folderName
echo "The $folderName directory has been created."
cp foldermaker.sh $folderName
echo "The file foldermaker.sh has been copied to the $folderName."
