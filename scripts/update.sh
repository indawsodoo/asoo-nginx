#!/bin/bash

# 1. Update your repo
git pull

# 2. Update containers without downtime
docker-compose stop nginx-proxy-automation-gen
docker container rm docker-gen
docker-compose up -d --build

exit 0
