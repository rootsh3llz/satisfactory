#!/bin/bash
docker rm -f satisfactory
docker rmi -f satisfactory:latest
docker build -t satisfactory:latest .
cd ..
docker create -h satisfactory --memory 120259084288 --name satisfactory --privileged --restart unless-stopped -it -v ./SaveGames:/home/satisfactory/.config/Epic/FactoryGame/Saved/SaveGames/server -v ./LinuxServer:/home/satisfactory/server/FactoryGame/Saved/Config/LinuxServer -v ./script/entrypoint.sh:/home/satisfactory/server/entrypoint.sh -p 7777:7777/udp -p 15000:15000/udp -p 15777:15777/udp satisfactory:latest