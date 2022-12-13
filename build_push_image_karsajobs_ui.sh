#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs-ui, dan memiliki tag latest.
docker build -t karsajobs-ui:latest .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker image tag karsajobs-ui:latest ariwijayaikd/karsajobs-ui:latest
docker image tag karsajobs-ui:latest ghcr.io/ariwijayaikd/karsajobs-ui:latest

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
export CR_PAT=ghp_token
# export PASSWORD_DOCKER_HUB=token
# echo $PASSWORD_DOCKER_HUB | docker login -u ariwijayaikd --password-stdin
echo $CR_PAT | docker login ghcr.io -u ariwijayaikd --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker push ariwijayaikd/karsajobs-ui:latest
docker push ghcr.io/ariwijayaikd/karsajobs-ui:latest