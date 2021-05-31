#!/bin/sh
sudo apt-get install screen -y
screen

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="895508ce6e0736ffd3570706ee6cb5c6e60eb965d385181d70" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start

 
     echo COUNTER $COUNTER
     let COUNTER-=1
done