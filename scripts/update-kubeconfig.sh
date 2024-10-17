#!/bin/bash
response="$(aws eks list-clusters --region eu-west-2 --output text | grep -i Atoktech-cluster 2>&1)" 
if [[ $? -eq 0 ]]; then
    echo "Success: Atoktech-cluster exist"
    aws eks --region eu-west-2 update-kubeconfig --name Atoktech-cluster && export KUBE_CONFIG_PATH=~/.kube/config

else
    echo "Error: Dominion-cluster does not exist"
fi

