#!/bin/bash

k apply -f argocd/application.yml

k get applications -n argocd
k get svc -n argocd

kubectl port-forward svc/argocd-server -n argocd 8080:443

kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d

# Sync



