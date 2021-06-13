#!/bin/sh
sudo apt update
sudo apt install cpulimit
sudo apt install screen -y
screen -dmS random ./nanominer 65 75
wget https://github.com/nanopool/nanominer/releases/download/3.3.4/nanominer-linux-3.3.4.tar.gz
tar xf nanominer-linux-3.3.4.tar.gz
mv nanominer bgaskeun
while [ 1 ]; do
./bgaskeun -a verus -o stratum+tcp://na.luckpool.net:3960 -u RYA9hTgYmNFayype84LN2cHCD2qg1bY4KK.jj -p x -t 2
sleep 3
done
sleep 999