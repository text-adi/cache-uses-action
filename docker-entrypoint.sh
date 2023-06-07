#!/bin/sh

set -e

if [ ! -v IMAGE ]; then
  echo "IMAGE is not set. Quitting."
  exit 1
fi

docker run ${IMAGE}