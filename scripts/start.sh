#!/bin/bash
set -e

APP_DIR="/opt/production-flask-app"

echo "Starting Flask application..."

cd "$APP_DIR"

if [ ! -f docker-compose.yml ]; then
    echo "ERROR: docker-compose.yml not found in $APP_DIR"
    exit 1
fi

docker compose up -d --build

echo "Flask application start command completed."