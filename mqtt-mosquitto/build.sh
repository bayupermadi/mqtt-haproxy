#!/bin/bash

docker rm my-mqtt-instances
docker rmi my-mqtt-image
docker build -t my-mqtt-image .
docker run --rm -p 0.0.0.0:1886:1883 --name my-mqtt-instances my-mqtt-image 