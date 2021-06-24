#!/bin/bash

set -e

docker-compose up -d
# Clean builder
docker image prune --filter label=stage=builder -f > /dev/null