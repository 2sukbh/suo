#!/bin/sh
sudo apt-get install screen -y
screen

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="0b9e034ce3ee25851b278384c7c8b528ed3bd776731046ac12" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start

 
     echo COUNTER $COUNTER
     let COUNTER-=1
done