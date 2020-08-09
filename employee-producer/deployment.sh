#!bin/bash

docker stop producer
docker rm producer
docker container run --name producer -p 9090:8080 -d ggupta008/employee-producer
