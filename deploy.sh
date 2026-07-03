#!/bin/bash

set -e

echo "Starting deployment..."

cd /home/ubuntu/production-flask-app

git pull origin main

docker compose down

docker compose up --build -d

docker image prune -f

echo "Deployment completed successfully!"
