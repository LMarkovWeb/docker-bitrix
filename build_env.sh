#!/bin/bash

cp .env.sample .env

echo -n "
# User ID and user group 
user_uid=$(id -u)
user_gid=$(id -g)" >> .env;

mkdir -p www

docker-compose up -d --build