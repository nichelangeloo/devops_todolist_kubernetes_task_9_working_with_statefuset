#!/bin/bash

echo "Creating namespaces"
kubectl apply -f ".infrastructure/namespace.yml"
kubectl create namespace mysql
 
echo "Deploying MySQL secrets"
kubectl apply -f ".infrastructure/st-secret.yml"
 
echo "Deploying MySQL ConfigMap (init.sql)"
kubectl apply -f ".infrastructure/st-configMap.yml"
 
echo "Deploying MySQL headless Service"
kubectl apply -f ".infrastructure/st-service.yml"
 
echo "Deploying MySQL StatefulSet"
kubectl apply -f ".infrastructure/statefulSet.yml"
 
echo "Deploying todoapp Secret"
kubectl apply -f ".infrastructure/secret.yml"
 
echo "Deploying todoapp ConfigMap"
kubectl apply -f ".infrastructure/configMap.yml"

echo "Deploying todoapp PV" 
kubectl apply -f ".infrastructure/pv.yml"

echo "Deploying todoapp PVC"
kubectl apply -f ".infrastructure/pvc.yml"
 
echo "Deploying todoapp Deployment"
kubectl apply -f ".infrastructure/deployment.yml"