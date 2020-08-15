#!/bin/sh
yum install docker
service docker start
docker pull srikavyakola/jenkins
docker run -p 8080:8080 -p 5000:5000 -v /var/run/docker.sock:/var/run/docker.sock -d srikavyakola/jenkins
