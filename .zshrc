alias ll='ls -lh'
alias la='ls -lha'

alias k='kubectl'
alias ns="kubectl config set-context --current --namespace"

# https://github.com/ismet55555/Certified-Kubernetes-Administrator-Notes
alias kg='kubectl get'
alias ka='kubectl apply -f '
alias kd='kubectl delete --force --grace-period=0'
alias kc='kubectl create'
alias kc-dry='kubectl create --dry-run=client -o yaml'
alias kr='kubectl run'
alias kr-dry='kubectl run --dry-run=client -o yaml'
