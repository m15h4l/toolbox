[ ! -z $(kubectl get ns | grep "$1") ] \
  && kubectl api-resources --verbs=list --namespaced -o name | grep -v events | xargs -n 1 kubectl get --show-kind --ignore-not-found -n $1 --no-headers \
  || echo "Namespace $1 not found"
