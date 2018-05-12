#!/bin/bash

#seafile 部署脚本
mkdir /opt/seafile-data

docker run -d --name seafile \
   -e SEAFILE_SERVER_LETSENCRYPT=false \
  -e SEAFILE_SERVER_HOSTNAME=share.cnfunny.cn \
  -e SEAFILE_ADMIN_EMAIL=244541048@qq.com \
  -e SEAFILE_ADMIN_PASSWORD=passwd \
  -v /opt/seafile-data:/shared \
  -p 80:80 \
  -p 443:443 \
  seafileltd/seafile:latest
