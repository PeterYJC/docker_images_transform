#!/usr/bin/env bash 

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export LANG="en_US.UTF-8"

Folder="/data/images"
for file_a in ${Folder}/*; do
    temp_file=`basename $file_a`
#   echo $temp_file
docker load < /data/images/$temp_file
echo $temp_file ok
done
echo '=============images_load finished============='