#!/bin/bash
read -p "Type the name of folder which you want to copy: " folderName
if [ -d "$folderName" ]; then
#copy it to anew location
    read -p "Type the name of the destination folder: " newFolderName
    cp -r "$folderName" "$newFolderName"
else
    echo "I couldn 't find that folder"
fi