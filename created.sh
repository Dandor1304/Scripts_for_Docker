#!/bin/bash
docker network create -d bridge App1 --subnet=192.168.10.0/24 --gateway=192.168.10.1
docker network create -d bridge App2 --subnet=192.168.11.0/24 --gateway=192.168.11.1
docker network create -d bridge App3 --subnet=192.168.12.0/24 --gateway=192.168.12.1
echo "Created networks is done"
docker run -d -p 80:80  --net=App1 --name=nginx-serv nginx
docker run -d -p 8080:80 --net App2 --name nginx-serv2 nginx
docker run -d -p 6480:80 --net App3 --name nginx-serv3 nginx
echo "Done"
echo "docker run -it --rm  --net App1 --name Analyz1 nicolaka/netshoot"


