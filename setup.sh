#!/bin/bash
if [[ "$1" = "up" ]]
then
 echo "creating containers "
 docker-compose -f ./jellyfin/docker-compose.yaml up -d
 docker-compose -f ./samba/docker-compose.yaml up -d
 docker-compose -f ./transmission/docker-compose.yaml up -d
 docker-compose -f ./webpage/docker-compose.yaml up -d
 echo -e "\033[0;34m All the container are up"
elif [[ "$1" = "down" ]]
then 
echo -e "\033[0;31mTaking down containers"
 docker-compose -f ./jellyfin/docker-compose.yaml down
 docker-compose -f ./samba/docker-compose.yaml down
 docker-compose -f ./transmission/docker-compose.yaml down
 docker-compose -f ./webpage/docker-compose.yaml down
 echo -e  "\033[0;31mAll the container are down" 
else
 docker-compose -f ./jellyfin/docker-compose.yaml up -d
 docker-compose -f ./samba/docker-compose.yaml up -d
 docker-compose -f ./transmission/docker-compose.yaml up -d
 docker-compose -f ./webpage/docker-compose.yaml up -d
 echo -e "\033[0;34mAll the container are up"
fi
