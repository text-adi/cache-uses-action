#!/bin/sh

set -e

if [ ! -v IMAGE ]; then
  echo "IMAGE is not set. Quitting."
  exit 1
fi

ls -la /var/lib/docker

docker run ${IMAGE}

ls -la /var/lib/docker