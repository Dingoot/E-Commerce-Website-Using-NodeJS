#! /bin/bash

kubectl apply -f web-deployment.yml
kubectl apply -f web-service.yml
kubectl apply -f mongo-deployment.yml
kubectl apply -f mongo-service.yml
kubectl apply -f mongo-pvc.yml
kubectl apply -f mongoexpress-deployment.yml
kubectl apply -f mongoexpress-service.yml
kubectl apply -f nginx-deployment.yml
kubectl apply -f nginx-service.yml
kubectl apply -f nginx-ssl-pvc.yml

sleep 3

kubectl get pods

