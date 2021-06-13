#!/bin/sh
sudo apt-get install screen -y
screen

COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
TOKEN="0984b8aef4021cf284191b927d7a92a2a47a5327fffcb37c13" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
~/.buildkite-agent/bin/buildkite-agent start

 
     echo COUNTER $COUNTER
     let COUNTER-=1
done