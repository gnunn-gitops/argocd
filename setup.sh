
#!/bin/bash

LANG=C

echo ""
echo "Installing Argo CD Operator."

oc apply -k https://github.com/redhat-canada-gitops/argocd/argocd-operator/overlays/default

echo "Pause 20 seconds for the creation and approval of the InstallPlan."
sleep 20

oc rollout status deploy/argocd-operator -n argocd

echo "Listing Argo CD CRDs."
oc get crd | grep argo


echo "Deploying Argo CD instance"

oc apply -k argocd/overlays/default

echo "Waiting for Argo CD server to start..."

sleep 20

oc rollout status deploy/argocd-server -n argocd

echo "Argo CD ready!"