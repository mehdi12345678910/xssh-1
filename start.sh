#!/bin/bash
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

tar -xzvf ngrok-v3-stable-linux-amd64.tgz

source ./config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
./ngrok authtoken 1vWMJlaKR5qN0R3xVaQoBjZyuPV_3w6wgsXzt6JqHqwtC4fca
echo "start ngrok service"
./ngrok tcp  --log=stdout 22 > ngrok.log
