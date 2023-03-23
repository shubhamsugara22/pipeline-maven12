#!/bin/bash

echo "*********************************"
echo "********Pushing Image************"
echo "*********************************"

IMAGE="maven-project"

echo "*************Logging In**********"
docker login -u shubhamsugara22 -p $PASS

echo "************Tagging Image********"
docker tag $IMAGE:$BUILD_TAG shubhamsugara22/$IMAGE:$BUILD_TAG

echo "************Pushing Image********"
docker push shubhamsugara22/$IMAGE:$BUILD_TAG
