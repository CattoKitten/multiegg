#!/bin/bash
cd /home/container

# Output Node.js version
node --version

# Downloading ASS source code 
git clone https://github.com/tycrek/ass.git && cd ass/

# Installing ASS depedencies
npm install

# Run ASS server
npm start