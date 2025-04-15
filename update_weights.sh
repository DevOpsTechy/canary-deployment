#!/bin/bash

# Usage: ./update_weights.sh <stable_weight> <canary_weight>
STABLE_WEIGHT=$1
CANARY_WEIGHT=$2

echo "🌀 Updating traffic split: Stable=$STABLE_WEIGHT%, Canary=$CANARY_WEIGHT%"

# Replace placeholders
sed -e "s/{{STABLE_WEIGHT}}/$STABLE_WEIGHT/" \
    -e "s/{{CANARY_WEIGHT}}/$CANARY_WEIGHT/" \
    nginx/default.template.conf > nginx/default.conf

# Reload nginx inside container
docker-compose exec nginx nginx -s reload

echo "✅ Weights updated successfully."

