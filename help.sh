#!/bin/bash
heplsss()
{
source e2.sh
test=1
while [[ $test == 1 ]]
do

ask=`zenity --list --title="Help" --column="0" "Help_hw" "Help_cpu" --width=100 --height=300 --hide-header`
if [ "$?" -eq 1 ]; then
    #On quitte le script
    exit
fi	
if [ "$ask" == "Help_hw" ]; then  
Hel="$(helphw)"
    if ret=`zenity --info --title='Help_hw' --no-markup --no-wrap --text="$Hel"`
		then
		echo "Help_hw"						
	fi
fi

if [ "$ask" == "Help_cpu" ]; then  Help_cpu
Help="$(helpcpu)"
    if ret=`zenity --info --title='Help_cpu' --no-markup --no-wrap --text="$Help"`
		then
		echo "Help_cpu"						
	fi
fi
done

}
