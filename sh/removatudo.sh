#!/bin/bash

# Remover os recursos do Kubernetes
kubectl delete -f kubernete/replicaset.yaml
kubectl delete -f kubernete/pod.yaml
k3d cluster delete lafuente
docker rmi -f $(docker images -a -q)
docker rm -f $(docker ps -aq)
docker volume rm $(docker volume ls -q)

