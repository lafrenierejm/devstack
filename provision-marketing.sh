#!/usr/bin/env bash

set -e
set -o pipefail
set -x

docker-compose $DOCKER_COMPOSE_FILES up -d marketing
docker exec -t edx.devstack.marketing bash -c \
	'cd /edx/app/edx-mktg/edx-mktg && make setup'
