#!/bin/bash

rtdir=~/CSP2101/

while true; do

	echo "Available directories in $rtdir: "
	ls $rtdir

	read -p 'Select a directory from the list above: ' seldir

	if [ -d "${rtdir}${seldir}" ]; then 
	 echo "You have requested to see the contents of the $seldir directory: "

		  if [ "$(ls -A ${rtdir}${seldir})" ]; then
				                #echo "Yes, there are files in there."
			 ls ${rtdir}${seldir}
		  else
		         echo "The $seldir directory is empty."
		  fi
		  break
		  else
			 echo "The directory enter does not exist. Please try again!"
		  fi
 done
