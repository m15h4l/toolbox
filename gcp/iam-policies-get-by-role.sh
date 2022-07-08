PROJECT=$1 # <project-name>
ROLE=$2 # roles/<role-name>
gcloud projects get-iam-policy $PROJECT | yq '.bindings[] | select(.role == "'$ROLE'") | .members[]'
