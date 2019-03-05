#!/bin/bash

source hardwarescript.sh
source e1.sh
source help.sh
source e2.sh
source preinstalls.sh

(yadinstall & zenityinstall )| zenity --progress --pulsate --auto-close 

test=1
yad --image='corebrum1.png' --title="Corebrum" --center --image-align="center"
while [[ $test == 1 ]]
do
 

ask=`zenity --list --title="Hardware Info" --column="0" "Hardware" "Help"   --width=100 --height=300 --hide-header`
if [ "$?" -eq 1 ]; then
    #On quitte le script
    test=-1	
fi
if [ "$ask" == "Hardware" ]; then
Hardware="$(hardwareex)"
		echo "Hardware"						
fi


if [ "$ask" == "Help" ]; then  
Hel="$(heplsss)"
		echo "Help"						
fi



done

