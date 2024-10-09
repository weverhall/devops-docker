#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "use two args: $0 <github-user/repo> <docker-hub-user/repo>"
    exit 1
fi

TEMP_DIR=$(mktemp -d) && cd "$TEMP_DIR"
trap 'rm -rf "$TEMP_DIR"' EXIT

git clone "https://github.com/$1.git" repo_dir || { echo "github clone failed"; exit 1; } && cd repo_dir

docker build -t "$2" . || { echo "docker build failed"; exit 1; }
docker push "$2" || { echo "docker push failed"; exit 1; }

echo "ebin success!"; exit 0
