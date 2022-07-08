PROJECT=$1 # Your project-id
GSA=$2 # GSAs metadata.name
ROLE=$3 # Full role. Example: roles/secretmanager.secretAccessor
gcloud projects add-iam-policy-binding $PROJECT --member "serviceAccount:$GSA@$PROJECT.iam.gserviceaccount.com" --role "$ROLE" --condition=None
