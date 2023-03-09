
![Logo](https://img2.storyblok.com/fit-in/0x300/filters:format(webp)/f/110098/5405x1416/10decfbcac/hero-logo.png)


# Satisfactory Dedicated Server Docker version for Linux machine

Allows you to start a Stisfactory dedicated server easily using Docker technology in a linux machine


## Table of contents

- Requirements
- Installation
- Import save
- Import/Edit server configuration (.ini)
- Start/stop

## Requirements

- PC, VPS or dedicated server that have the following [system requirements](https://satisfactory.fandom.com/wiki/Dedicated_servers#Requirements)
- Docker engine. (Google it to see how to install it on your platform)



## Installation

```bash
  git clone https://github.com/rootsh3llz/satisfactory.git
  cd satisfactory/setup/
  ./install.sh
```


## Import save

You can import your world saves inside Docker by simply placing them inside `satisfactory/SaveGames` before starting Docker and the dedicated server. If you started a world on your Windows or Linux pc it can retrieve them in the following paths:
- Linux: ```~/.config/Epic/FactoryGame/Saved/SaveGames```
- Windows: ```%LOCALAPPDATA%\FactoryGame/Saved/SaveGames```

The recovered saves should be copied to the `satisfactory/SaveGames` folder before starting Docker and the dedicated server. 

If you don't have any saves you can skip this step. 

## Import/Edit server configuration (.ini)

By downloading this repository inside `satisfactory/LinuxServer` you can find all the necessary `.ini` files for the dedicated server edited by me that increase performance.

To make any changes follow the following [guide](https://satisfactory.fandom.com/wiki/Dedicated_servers/Configuration_files).

If you have your own set of `.ini` files just copy them to `satisfactory/LinuxServer` before starting Docker and the dedicated server
## Start/stop the server
To start the server
```bash
  cd your_path_for_satisfactory_repo/satisfactory/setup/
  ./run.sh
```

To stop the server 

```bash
  cd your_path_for_satisfactory_repo/satisfactory/setup/
  ./stop.sh
```