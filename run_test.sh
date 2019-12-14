#!/bin/bash -eu

compose_file=$(dirname $0)/gcc-cmake/docker-compose.test.yml
docker-compose -f $compose_file up --build
docker-compose -f $compose_file down
