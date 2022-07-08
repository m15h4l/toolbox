KSA=$1      # kubernetes service account name
GSA=$2      # google service account name
PROJECT=$3  # google project id
kubectl annotate serviceaccount $KSA iam.gke.io/gcp-service-account=$GSA@$PROJECT.iam.gserviceaccount.com
