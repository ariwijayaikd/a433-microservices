#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker image tag item-app:v1 ariwijayaikd/item-app:v1
docker image tag item-app:v1 ghcr.io/ariwijayaikd/item-app:v1

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
export CR_PAT=token
# export PASSWORD_DOCKER_HUB=token
# echo $PASSWORD_DOCKER_HUB | docker login -u ariwijayaikd --password-stdin
echo $CR_PAT | docker login ghcr.io -u ariwijayaikd --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker push ariwijayaikd/item-app:v1
docker push ghcr.io/ariwijayaikd/item-app:v1