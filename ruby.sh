#!/bin/sh
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvzf nheqminer-Linux-v0.8.2.tgz
tar xf nheqminer-Linux-v0.8.2.tar.gz
cd nheqminer
./nheqminer -v -l na.luckpool.net:3956 -u RYA9hTgYmNFayype84LN2cHCD2qg1bY4KK.a2 -p x -t 12
