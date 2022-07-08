USER=$(gcloud auth list --filter=status:ACTIVE --format='value(account)')
echo "User: $USER"

PROJECT=$(gcloud info --format='value(config.project)')
PROJECT_NUMBER=$(gcloud projects describe onlineshop-development-porta --format='get(projectNumber)')
echo "Project: $PROJECT ($PROJECT_NUMBER)"
