#!/bin/sh
sudo apt-get install screen -y
screen

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="6b0d14f14d63b4bed3ac95ba8fdde3fb8ce966f82f3835da47" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start

 
     echo COUNTER $COUNTER
     let COUNTER-=1
done