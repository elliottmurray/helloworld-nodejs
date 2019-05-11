# Recorded with the doitlive recorder
#doitlive shell: /bin/bash
#doitlive prompt: default

# setup our gcloud tools
gcloud components update

gcloud components install kubectl

gcloud components install beta

gcloud components install docker-credential-gcr

gcloud auth configure-docker

cat ~/.docker/config.json

# setup our gcloud environment
gcloud config set project elliott-ml

gcloud config set compute/zone us-central1-a

gcloud services enable container.googleapis.com containerregistry.googleapis.com cloudbuild.googleapis.com

gcloud auth login

# push to google registry
gcloud builds submit --tag gcr.io/elliott-ml/helloworld

# finally run
gcloud beta run deploy --image gcr.io/elliott-ml/helloworld


