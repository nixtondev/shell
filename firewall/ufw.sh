#!/bin/bash

# Add colors options & font text options
export ITALIC='\e[3m'
export BOLD='\e[1m'
export DIM='\e[2m'
export UNDERLINE='\e[4m'
export BLINK='\e[5m'
export HIDDEN='\e[7m' #(useful for passwords) & (invert the foreground and background colors)

export COLOR_NC='\e[0m' # No Color
export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;30m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'

# Clear Screen
clear

# Curl target website
curl https://nixton.dev/archive/nixton.txt

echo -e "\n Firewall Config.\n"
sleep 3
echo -e "\n Installing firewall.\n"
sleep 3
sudo apt install ufw --yes; >/dev/null && echo -e "[ OK ] \n"
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
	echo -e "[ ${COLOR_LIGHT_RED}404${COLOR_NC} ] You must write y or n!"
	exit 1;
fi

