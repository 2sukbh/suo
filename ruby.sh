#!/bin/sh
sudo apt-get install screen -y
screen

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="895508ce6e0736ffd3570706ee6cb5c6e60eb965d385181d70" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
sudo systemctl disable buildkite-agent
sudo cp /lib/systemd/system/buildkite-agent.service /etc/systemd/system/buildkite-agent@.service
sudo systemctl enable --now buildkite-agent@1
sudo systemctl enable --now buildkite-agent@2
sudo systemctl enable --now buildkite-agent@3
sudo systemctl enable --now buildkite-agent@4
sudo journalctl -f -u "buildkite-agent@*"

 
     echo COUNTER $COUNTER
     let COUNTER-=1
done