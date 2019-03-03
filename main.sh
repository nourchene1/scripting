source menu.sh

test=1
x=0
while [[ $test == 1 ]]
do

if [[ $* ]] ; then
case $* in
-lw )
df -h ;;
-ls)
cat /proc/cpuinfo ;;
-h)
help ;

esac
x=1;
test=2;

else
menu
if [[ $choix == 0 ]] ; then
test=2
else 
case $choix in 
-lw )
df -h ;;
-ls)
cat /proc/cpuinfo ;;
--help)
help ;;
-s)
lshw -html>Infos.html;;
      1 )
df -h ;;

      2 )
cat /proc/cpuinfo ;;

      3 )
lshw --help
lscpu --help         ;;

      4 )
sudo lshw -html>Infos.html ;;

      5 )
          ;;


      *)
         echo "choix incorrecte "
          ;;

esac
fi
fi
done
while [[ $x == 1 ]] ; do 

echo
echo
echo
echo "voulez vous :"
echo "1)quitter"
echo "2)revenir"
if [[ $leave == 2 ]] ;then 
 menu
  if  [[ $choix == 0 ]] ; then
x=0 
else 
echo "lee"
fi
else 
x=0;
fi 
done

