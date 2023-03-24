#!/bin/bash

echo "**************************************"
echo "********Building Jar******************"
echo "**************************************"

WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm  -ti -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app  maven:latest  "$@"
