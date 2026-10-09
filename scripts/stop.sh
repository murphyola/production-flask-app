#!/bin/bash
set -e

APP_DIR="/opt/production-flask-app"

echo "Stopping existing application if present..."

if [ -f "$APP_DIR/docker-compose.yml" ]; then
    cd "$APP_DIR"
    docker compose down || true
else
    echo "No existing Docker Compose application found. First deployment."
fi

echo "ApplicationStop completed."