
alias k=kubectl

# Pods
kubectl get pods
k get pods -o wide
k get pods --show-labels
k describe pods my-front-658789c759-9fqw9
k get deploy my-front -o yaml

# Deployments
kubectl get deployments
k get deploy

# Services
k get services (k get svc)
k get endpoints (k get ep)

kubectl apply -f <file>

kubectl port-forward services/svc-front 8888:8888 -n default