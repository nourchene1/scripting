#!/bin/bash
hardwareex()
{
source e1.sh
test=1
while [[ $test == 1 ]]
do

ask=`zenity --list --title="Hardware Info" --column="0" "CPU" "Memory" "GPU" "Drive" "Save infos" --width=100 --height=300 --hide-header`
if [ "$?" -eq 1 ]; then
    #On quitte le script
    exit	
fi
if [ "$ask" == "CPU" ]; then
CPU="$(hardwarels)"
    if ret=`zenity --info --title='CPU Info' --text="$CPU"`
		then
		echo "CPU"						
	fi
fi

if [ "$ask" == "Memory" ]; then
   Memory="$(memoryls)"
    if ret=`zenity --info --title='Memory Info' --text="$Memory"`
		then
		echo "Memory"						
	fi
fi

if [ "$ask" == "GPU" ]; then
   GPU="$(gpuls)"
    if ret=`zenity --info --title='GPU Info' --text="$GPU"`
		then
		echo "GPU"						
	fi
fi

if [ "$ask" == "Drive" ]; then
    Drive="$(drivels)"
    if ret=`zenity --info --title='Drive Info' --text="$Drive"`
		then
		echo "Drive"						
	fi
fi

if [ "$ask" == "Save infos" ]; then
    if ret=`zenity --entry --title='Save infos' --text="Specify file name"`
		then
		lshw -html -class cpu -class display -class memory -class disk>"$ret".html
		echo "Saved"						
	fi
fi
done

}
