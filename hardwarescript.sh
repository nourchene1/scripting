#!/bin/bash

ask=`zenity --list --title="Hardware Info" --column="0" "CPU" "Memory" "GPU" "Drive" "Help" "Help_cpu"  "Save infos" --width=100 --height=300 --hide-header`
if [ "$?" -eq 1 ]; then
    #On quitte le script
    exit	
fi
if [ "$ask" == "CPU" ]; then
CPU="$(lshw -c cpu)"
    if ret=`zenity --info --title='CPU Info' --text="$CPU"`
		then
		echo "CPU"						
	fi
fi

if [ "$ask" == "Memory" ]; then
   Memory="$(lshw -c memory)"
    if ret=`zenity --info --title='Memory Info' --text="$Memory"`
		then
		echo "Memory"						
	fi
fi

if [ "$ask" == "GPU" ]; then
   GPU="$(lshw -c display)"
    if ret=`zenity --info --title='GPU Info' --text="$GPU"`
		then
		echo "GPU"						
	fi
fi

if [ "$ask" == "Drive" ]; then
    Drive="$(lshw -c disk)"
    if ret=`zenity --info --title='Drive Info' --text="$Drive"`
		then
		echo "Drive"						
	fi
fi

if [ "$ask" == "Help" ]; then  
Hel="$(info lshw)"
    if ret=`zenity --info --title='Help' --no-markup --no-wrap --text="$Hel"`
		then
		echo "Help"						
	fi
fi

if [ "$ask" == "Help_cpu" ]; then  Help_cpu
Help="$(info lscpu)"
    if ret=`zenity --info --title='Help_cpu' --no-markup --no-wrap --text="$Help"`
		then
		echo "Help_cpu"						
	fi
fi
if [ "$ask" == "Save infos" ]; then
Hel="$(lshw -html>Infos.html)"
    if ret=`zenity --info --title='Help' --no-markup --no-wrap --text="Done"`
		then
		echo "Saved"						
	fi
fi
exec ./hardwarescript.sh
