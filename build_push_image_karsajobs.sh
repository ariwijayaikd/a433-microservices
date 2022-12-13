#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs, dan memiliki tag latest.
docker build -t karsajobs:latest .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker image tag karsajobs:latest ariwijayaikd/karsajobs:latest
docker image tag karsajobs:latest ghcr.io/ariwijayaikd/karsajobs:latest

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
export CR_PAT=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
# export PASSWORD_DOCKER_HUB=token
# echo $PASSWORD_DOCKER_HUB | docker login -u ariwijayaikd --password-stdin
echo $CR_PAT | docker login ghcr.io -u ariwijayaikd --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker push ariwijayaikd/karsajobs:latest
docker push ghcr.io/ariwijayaikd/karsajobs:latest