#!/bin/bash

# Deploy Firestore security rules
echo "Deploying Firestore security rules..."

# Check if Firebase CLI is installed
if ! command -v firebase &> /dev/null; then
    echo "Firebase CLI not found. Installing..."
    npm install -g firebase-tools
fi

# Deploy the rules
firebase deploy --only firestore:rules

echo "Rules deployment complete!"