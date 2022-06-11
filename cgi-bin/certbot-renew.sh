#!/bin/bash

BASEDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")/../" &> /dev/null && pwd)

cd "$BASEDIR/"

docker-compose run --rm certbot renew && ocker-compose kill -s SIGHUP webserver
docker system prune -af
