#!/bin/bash
dpkg --add-architecture i386
apt update -y
apt upgrade -y
apt install sudo -y
apt install login -y
apt install curl -y
apt install lib32gcc-s1 -y
apt install libcurl4-openssl-dev -y
apt install libcurl4-gnutls-dev:i386 -y
apt install libsdl2-2.0-0:i386 -y
adduser satisfactory
mkdir /home/satisfactory/steamcmd/ && cd /home/satisfactory/steamcmd/ && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
chown -R satisfactory:satisfactory /home/satisfactory/steamcmd/