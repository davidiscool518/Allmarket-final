#!/bin/bash

MSG=${1:-"update"}

echo "📦 Pulling latest changes..."
git pull origin main --no-rebase

echo "➕ Staging all changes..."
git add .

echo "💾 Committing..."
git commit -m "$MSG" || echo "⚠️ Nothing to commit"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Done!"
