#!/bin/bash
set -e

HEALTH_URL="http://127.0.0.1/health"
MAX_ATTEMPTS=12
SLEEP_SECONDS=5

echo "Checking application health at $HEALTH_URL..."

for attempt in $(seq 1 "$MAX_ATTEMPTS"); do
    if curl --fail --silent --show-error "$HEALTH_URL"; then
        echo
        echo "Application health check passed."
        exit 0
    fi

    echo "Attempt $attempt/$MAX_ATTEMPTS failed. Retrying..."
    sleep "$SLEEP_SECONDS"
done

echo "ERROR: Application did not become healthy."
exit 1