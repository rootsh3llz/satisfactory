#!/bin/bash
chown -R satisfactory:satisfactory /home/satisfactory/.config
chown -R satisfactory:satisfactory /home/satisfactory/server
sudo -u satisfactory /home/satisfactory/steamcmd/steamcmd.sh +force_install_dir /home/satisfactory/server/ +login anonymous +app_update 1690800 -beta experimental validate +quit
sudo -u satisfactory /home/satisfactory/server/FactoryServer.sh