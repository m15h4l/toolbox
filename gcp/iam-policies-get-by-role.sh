PROJECT=$1 # project-name
ROLE=$2 # roles/clouddeploy.viewer
gcloud projects get-iam-policy $PROJECT | yq '.bindings[] | select(.role == "'$ROLE'") | .members[]'
