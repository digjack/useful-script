#!/bin/bash

# from https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.12.1~ce-0~ubuntu_amd64.deb
apt-get install libltdl7
dpkg -i docker-ce_17.12.1~ce-0~ubuntu_amd64.deb


#https://www.docker-cn.com/registry-mirror

#拉取国内镜像示例:docker pull registry.docker-cn.com/myname/myrepo:mytag

#docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version








