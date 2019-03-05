#!/bin/bash
yadinstall(){
res=`whereis yad`
if [ "$res" == "yad:" ]; then
  sudo tee /etc/sudoers.d/$USER <<END
END
  
  sudo apt-get install -y yad
  echo 100
fi
echo Yad loaded
}

zenityinstall(){
res=`whereis zenity`
if [ "$res" == "zenity:" ]; then
  sudo tee /etc/sudoers.d/$USER <<END
END
  apt-get install *y zenity
  echo 100
fi
echo Zenity loaded
}
