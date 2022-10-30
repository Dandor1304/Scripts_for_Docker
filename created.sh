#!/bin/bash
docker network create -d bridge App1 --subnet=192.168.10.0/24 --gateway=192.168.10.1
docker network create -d bridge App2 --subnet=192.168.11.0/24 --gateway=192.168.11.1
docker network create -d bridge App3 --subnet=192.168.12.0/24 --gateway=192.168.12.1
echo "Created networks is done"
