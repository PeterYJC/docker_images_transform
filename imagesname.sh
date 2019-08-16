#!/usr/bin/env bash 
# 生成images名单

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export LANG="en_US.UTF-8"

mkdir -p /data/images 
docker images >/data/images.txt 
awk '{print $1}' /data/images.txt > /data/images_name.txt 
sort /tmp/images_name | uniq > /data/images_final.txt
