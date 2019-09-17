#!/bin/bash

docker rm my-running-haproxy
docker rmi my-haproxy
docker build -t my-haproxy .
docker run --rm -p 0.0.0.0:1886:1883 --name my-running-haproxy my-haproxy haproxy -V -f /usr/local/etc/haproxy/haproxy.cfg -n 3