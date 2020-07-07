#!/bin/bash

docker run --rm --net rikardo -v "$PWD"/mariadb:/var/lib/mysql --name rikardo-db -d --env-file .env mariadb
sleep 30
docker run --rm --name rikardo-www --net rikardo -d rikardo-www
docker run --rm -p 80:80 --name rikardo-proxy --net rikardo -v "$PWD"/nginx.conf:/etc/nginx/nginx.conf:ro -v "$PWD"/assets/:/assets nginx