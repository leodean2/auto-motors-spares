#!/bin/bash

# Check backend health
BACKEND_URL=${BACKEND_URL:-http://localhost:5000}
curl -s $BACKEND_URL/health | jq .

# Check frontend availability
FRONTEND_URL=${FRONTEND_URL:-http://localhost:3000}
curl -sI $FRONTEND_URL | head -n 1