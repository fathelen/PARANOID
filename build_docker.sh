#!/usr/bin/env bash

ACCOUNT="pbarth"
VERSION="1.0"
REPO="hub.docker.com"

set -e

for d in `ls dockerfiles/`; do
    NAME=${d/dockerfile.}
    docker build -t ${NAME}:${VERSION} . -f dockerfiles/${d}
    docker tag ${NAME}:${VERSION} ${ACCOUNT}/${NAME}:${VERSION}
    docker push ${ACCOUNT}/${NAME}:${VERSION}
done
