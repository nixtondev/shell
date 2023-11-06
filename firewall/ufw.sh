#!/bin/bash

# Clear Screen
clear

# Curl target website
curl https://nixton.dev/archive/nixton.txt

echo ""
echo "Firewall Config."
echo ""
sleep 3
echo "Installing firewall."
sleep 3
echo ""
sudo apt install ufw --yes; >/dev/null && echo "[ OK ]"
echo ""
sleep 3

read -p "Enable firewall? y/n: " YesNo

if [[ $YesNo == "y" ]]; then

	sudo ufw enable >/dev/null && echo "Reboot the computer."
	echo "Firewall is enabled."

elif [[ $YesNo == "n" ]]; then
	/usr/bin/clear
	echo "Well done."
	exit 1;

else
	/usr/bin/clear
	echo "[ 404 ] You must write y or n!"
	exit 1;
fi

