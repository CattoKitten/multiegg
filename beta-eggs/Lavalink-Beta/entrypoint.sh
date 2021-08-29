#!/bin/bash

# Show java version
java --version

# Download latest lavalink version (wont download if Lavalink.jar exist)
wget -nc https://github.com/freyacodes/Lavalink/releases/download/3.3.2.5/Lavalink.jar

# Download sample lavalink config and change application.yml.sample to application.yml (wont download if application.yml exist)
wget -nc https://raw.githubusercontent.com/freyacodes/Lavalink/master/LavalinkServer/application.yml.example && mv application.yml.example application.yml

# Run the server !
java -jar Lavalink.jar