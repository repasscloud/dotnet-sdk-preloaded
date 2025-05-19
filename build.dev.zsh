#!/usr/bin/env zsh

# Usage: ./test-docker-build.zsh /path/to/dockerfile [tag-name]
# Defaults: tag-name = temp-docker-test

set -e  # Exit immediately if any command fails

DOCKERFILE_DIR=$1
TAG_NAME=${2:-temp-docker-test}

if [[ -z "$DOCKERFILE_DIR" || ! -d "$DOCKERFILE_DIR" ]]; then
  echo "❌ Error: Must provide a valid directory containing a Dockerfile."
  exit 1
fi

echo "🛠️ Building Docker image from $DOCKERFILE_DIR..."

docker build --no-cache --rm --force-rm -t "$TAG_NAME" "$DOCKERFILE_DIR"

echo "🚀 Running temporary container from $TAG_NAME..."
docker run --rm "$TAG_NAME"

echo "🧹 Cleaning up image..."
docker rmi "$TAG_NAME"

echo "✅ Done."
