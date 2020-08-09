## employee-producer

Reference ---  https://www.javainuse.com/devOps/docker/docker-jar

# Build
mvn clean install

Following artifacts has been generated-

#employee-producer/target# ls -lrtha

total 14M

drwxr-xr-x 3 root root 4.0K Aug  6 09:06 maven-status

drwxr-xr-x 3 root root 4.0K Aug  6 09:06 generated-sources

drwxr-xr-x 3 root root 4.0K Aug  6 09:06 classes

drwxr-xr-x 2 root root 4.0K Aug  6 09:06 test-classes

drwxr-xr-x 2 root root 4.0K Aug  6 09:06 maven-archiver

-rw-r--r-- 1 root root 4.3K Aug  6 09:06 employee-producer-0.0.1-SNAPSHOT.jar.original

drwxr-xr-x 7 root root 4.0K Aug  6 09:07 .

-rw-r--r-- 1 root root  14M Aug  6 09:07 employee-producer-0.0.1-SNAPSHOT.jar

drwxr-xr-x 5 root root 4.0K Aug  6 09:09 ..

root@masternode:/home/ubuntu/example/devops/employee-producer/target#


# Code coverage

# Testing

# Container Security Testing

# Docker build and publish

docker build -t ggupta008/employee-producer .

docker login --username=$DOCKER_USER --password=$DOCKER_PASS $DOCKER_HOST --email whale@docker.com

docker push ggupta008/employee-producer


Outputs- docker build -t employee-producer .

Sending build context to Docker daemon  14.29MB

Step 1/3 : From openjdk:8

8: Pulling from library/openjdk

d6ff36c9ec48: Pull complete

c958d65b3090: Pull complete

edaf0a6b092f: Pull complete

80931cf68816: Pull complete

bf04b6bbed0c: Pull complete

41dc8052672f: Pull complete

dbbc65a7534c: Pull complete

Digest: sha256:a13dd5f0aadab3173570fa16678e8da6627e66535ac7f2963b065e2a563e3ea1

Status: Downloaded newer image for openjdk:8

---> 5684f3366a1f

Step 2/3 : copy ./target/employee-producer-0.0.1-SNAPSHOT.jar employee-producer-0.0.1-SNAPSHOT.jar

---> 69c3f5d9fe08

Step 3/3 : CMD ["java","-jar","employee-producer-0.0.1-SNAPSHOT.jar"]

---> Running in a95c3a3e7f63

Removing intermediate container a95c3a3e7f63

---> d686cf4f9591

Successfully built d686cf4f9591

Successfully tagged employee-producer:latest

root@masternode:/home/ubuntu/example/devops/employee-producer# docker images | grep employee-producer

ggupta008/employee-producer                                        latest              d686cf4f9591        24 seconds ago      525MB



# Test Deployment

Options-
1. Docker Run
2. Docker Compose
3. Kubernetes

Docker Run

docker container run --name producer -p 9090:8080 -d ggupta008/employee-producer

curl localhost:9090/employee
{"empId":"1","name":"emp1","designation":"manager","salary":3000.0}

# Acceptance Testing

# Staiging Deployment

# Production Deployment





