#!/bin/bash
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

tar -xzvf ngrok-v3-stable-linux-amd64.tgz

source ./config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
./ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
./ngrok tcp 22 --log=stdout > ngrok.log
