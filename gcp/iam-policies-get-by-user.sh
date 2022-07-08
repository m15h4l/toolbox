PROJECT=$1 # <project-name>
MEMBER=$2  # serviceAccount:<gsa-name>@<gsa-project-name>.iam.gserviceaccount.com

gcloud projects get-iam-policy $PROJECT | MEMBER="$MEMBER" yq '.bindings[] | select(.members[] == env(MEMBER)) | .role'
