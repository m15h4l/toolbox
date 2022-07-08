KSA=$1          # kubernetes service account name
GSA=$2          # google service account name
PROJECT=$3      # google project id
NS=${4-default} # kubernetes service account namespace; Falls back to "default" when not provided!
kubectl annotate serviceaccount $KSA iam.gke.io/gcp-service-account=$GSA@$PROJECT.iam.gserviceaccount.com

gcloud iam service-accounts add-iam-policy-binding $GSA@$PROJECT.iam.gserviceaccount.com \
    --role roles/iam.workloadIdentityUser \
    --member "serviceAccount:$PROJECT.svc.id.goog[$NS/$KSA]"
