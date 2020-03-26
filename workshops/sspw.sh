#!/bin/bash

rtdir=~/CSP2101/

#Ask user to select a directory in CSP2101 root folder

while true; do

	echo "Available directories in $rtdir: "
	ls $rtdir

	read -p 'Select a directory from the list above: ' seldir

	if [ -d "${rtdir}${seldir}" ]; then 
		    echo "You have selected the $seldir directory: "

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

											    #Request a new password from user

											    while true; do
												        read -s -p 'Enter a new password for future use: ' selpw
													        if ! [ -z "$selpw" ]; then
															 echo "Password accepted."
													                 break
														 else
														    echo "No password provided. Please try again!"
														 fi
	    												    done
													   													    #Write passsword to text file in chose ditectory
																										    if ! [ -f "${rtdir}${seldir}/secret.txt" ]; then #check the secret file do not exist
																										        echo "The file secret.txt does not yet exist. Creating it now..."
																											 touch ${rtdir}${seldir}/secret.txt
																							       				 echo "Password now being written to file..."
																								   			 echo "$selpw" > "${rtdir}${seldir}/secret.txt"
																								       			 echo "Password has been written to ${rtdir}${seldir}/secret.txt"
																									   		 cat "${rtdir}${seldir}/secret.txt" #show the file had been written
																								   		   else
																									       	         echo "The file secret.txt already exists. Password being written to it now..."
																										   	 echo "$selpw" >> "${rtdir}${seldir}/secret.txt"
																										         echo "Password has been written to ${rtdir}${seldir}/secret.txt"
																											 cat "${rtdir}${seldir}/secret.txt" #show the file had been written
																										    fi
																										    exit 0
