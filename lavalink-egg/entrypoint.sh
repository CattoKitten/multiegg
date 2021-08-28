#!/bin/bash

# Show java version
java --version

## Download lavalink
wget https://github.com/freyacodes/Lavalink/releases/download/3.3.2.5/Lavalink.jar

## Download sample configuration and change name to application.yml
wget https://raw.githubusercontent.com/freyacodes/Lavalink/master/LavalinkServer/application.yml.example && mv application.yml.example application.yml

## Run the server!
java -jar Lavalink.jar