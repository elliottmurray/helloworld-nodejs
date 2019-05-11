gcloud components update
gcloud components install kubectl
gcloud components install beta
gcloud auth configure-docker

gcloud config set project elliott-ml
gcloud config set compute/zone us-central1-a
gcloud services enable container.googleapis.com containerregistry.googleapis.com cloudbuild.googleapis.com
gcloud components install docker-credential-gcr


gcloud auth login
gcloud auth configure-docker



gcloud builds submit --tag gcr.io/elliott-ml/helloworld

gcloud builds submit --tag gcr.io/elliott-ml/helloworld
gcloud beta run deploy --image gcr.io/elliott-ml/helloworld
