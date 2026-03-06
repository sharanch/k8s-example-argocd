To install on a minikube cluster

kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml



This creates a localtunnel to access argocd webui

kubectl port-forward svc/argocd-server -n argocd 8081:443





to get argocd webui default password

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
