#!/bin/bash

# Exit on error
set -e

echo "Deploying backend..."
cd backend

# Install dependencies
npm install --production

# Run tests (if any)
npm test

# Deploy to Render (example)
render deploy --name mern-backend --region us-east

echo "Backend deployed successfully!"