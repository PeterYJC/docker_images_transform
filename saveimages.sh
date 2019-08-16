#!/usr/bin/env bash 

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export LANG="en_US.UTF-8"

#mkdir -p /tmp/images 
#docker images >/tmp/images.txt 
#awk '{print $1}' /tmp/images.txt > /tmp/images_name.txt 

while read NAME
do 
# echo $NAME 
save_name="$(echo ${NAME}|sed 's/\//_/g')"
docker save $NAME > /data/images/$save_name.tar
echo "$save_name" ok
done < /data/images_final.txt

echo '=============images_save finished============='

