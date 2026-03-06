To test using docker, use the below commands

docker pull sharanch/digiresume:latest
docker run -d -p 8080:80 sharanch/digiresume:latest




Install ArgoCD

kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml



The default admin password can be aquired through this command

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo


access webui with the below portforward

kubectl port-forward svc/argocd-server -n argocd 8081:443


