#!/bin/sh
# Free RDP GoormIDE
sudo adduser rootx --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "rootx:2971" | sudo chpasswd
sudo usermod -aG sudo,adm rootx
sudo apt install screen
sudo apt update
clear
screen -R rootx
echo "===================================="
echo "Install XFCE"
echo "Choose Keyboard 31 then 1"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies > /dev/null 2>&1
echo "=======25%"
sudo apt install firefox -y > /dev/null 2>&1
echo "=============50%"
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal > /dev/null 2>&1
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "RDP IP Address :" && curl --silent --show-error ipconfig.io
echo "Username : aank"
echo "Password : LinggaHosting"
echo Go to settings add port 3389
