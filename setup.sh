#!/bin/bash
BOLD="\033[01;01m"     # Highlight
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
RESET="\033[00m"
echo ""

echo -e " $YELLOW >>>>>>>>>>>>Welcome to Reconnaissance_PRO setup,Do you want to Continue: (yes) \c"

read YES

if [ "$YES" ];
then
	apt-get update
	apt-get upgrade
	apt-get install git
	sudo apt-get install proxychains
	sudo apt-get install tor


echo "";
    echo "[✔] all Tools installed successfully! [✔]";
    echo "";
    echo "[✔]==========================================================================[✔]";
    echo "[✔]      All is done!!   \"run ./Reconnaissance.sh \"    [✔]";
    echo "[✔]==========================================================================[✔]";
    echo "";

  echo -e "$GREEN DONT FORGET TO FOLLOW ME https://www.youtube.com/channel/UC5SpJc-fVZ5Kb6ZHfAoZ9Sw"



fi
	 
