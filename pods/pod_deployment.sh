#!/bin/bash
# Niginx pod deployment
# Creating nginx pod
kubectl run nginx --image nginx
# List all pods in a default namespace
kubectl  get pods
# List all pods in all namespaces
kubectl  get pods --all-namespaces
# Retrieve pod's descriptor
kubectl  get pod nginx -o yaml 
# Access nginx web server running in a pod
kubectl port-forward nginx 8080:80
curl localhost:8080 # Send this command in a new terminal session
