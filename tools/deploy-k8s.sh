#!/usr/bin/env bash

docker build -t q84fh/q84fh.net:latest ../;
docker push q84fh/q84fh.net:latest;
kubectl delete -f ../deployment.yaml;
kubectl apply -f ../deployment.yaml;
