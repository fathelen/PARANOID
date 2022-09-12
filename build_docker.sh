#!/usr/bin/env bash

ACCOUNT="pbarth"
VERSION="1.0"
REPO="hub.docker.com"

set -e

for d in `ls dockerfiles/`; do
    NAME=${d/dockerfile.}
    docker build -t ${NAME}:${VERSION} . -f dockerfiles/${d}
    docker tag ${NAME}:${VERSION} harbor.computational.bio.uni-giessen.de/sjaenick/${NAME}:${VERSION}
    docker push harbor.computational.bio.uni-giessen.de/sjaenick/${NAME}:${VERSION}
done
