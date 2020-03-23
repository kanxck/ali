#!/bin/bash
sudo apt update --fix-missing
sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev -y
git clone https://github.com/cryptozeny/cpuminer-opt-sugarchain.git
cd cpuminer-opt-sugarchain
./build-yespower.sh -y
./cpuminer -a yespower -o stratum+tcp://stratum-asia.rplant.xyz:7042 -u sugar1qhp6gnatfk0n2smw63m44tv8ggh85lu6g4sr6tg.msr -p x -B
