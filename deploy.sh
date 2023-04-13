#!/bin/bash
set -e

# Deploy the Docker image to App Engine Flexible
gcloud app deploy --image-url gcr.io/khaja-dv/my-flask-app:$COMMIT_SHA

# Cleanup Docker images
docker images -q gcr.io/khaja-dv/my-flask-app:$COMMIT_SHA | xargs docker rmi
