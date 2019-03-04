#!/bin/bash

source hardwarescript.sh
source e1.sh
source help.sh
source e2.sh

test=1
yad --image='corebrum1.png' --title="Corebrum"
while [[ $test == 1 ]]
do
 

ask=`zenity --list --title="Menu" --column="0" "Hardware" "Help"   --width=100 --height=300 --hide-header`
if [ "$?" -eq 1 ]; then
    #On quitte le script
    exit	
fi
if [ "$ask" == "Hardware" ]; then
Hardware="$(hardwareex)"
    if ret=`zenity --info --title='Hardware' --text="$Hardware"`
		then
		echo "Hardware"						
	fi
fi


if [ "$ask" == "Help" ]; then  
Hel="$(heplsss)"
    if ret=`zenity --info --title='Help' --no-markup --no-wrap --text="$Hel"`
		then
		echo "Help"						
	fi
fi



done
exec ./menu.sh
