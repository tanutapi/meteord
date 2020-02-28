#!/bin/bash
set -x

: ${NODE_VERSION?"NODE_VERSION has not been set."}

docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "tanutapi/meteord:node-${NODE_VERSION}-base" ../base && \
  docker tag "tanutapi/meteord:node-${NODE_VERSION}-base" tanutapi/meteord:base
docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "tanutapi/meteord:node-${NODE_VERSION}-onbuild" ../onbuild && \
  docker tag "tanutapi/meteord:node-${NODE_VERSION}-onbuild" tanutapi/meteord:onbuild
docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "tanutapi/meteord:node-${NODE_VERSION}-devbuild" ../devbuild && \
  docker tag "tanutapi/meteord:node-${NODE_VERSION}-devbuild" tanutapi/meteord:devbuild
docker build --build-arg "NODE_VERSION=${NODE_VERSION}" -t "tanutapi/meteord:node-${NODE_VERSION}-binbuild" ../binbuild && \
  docker tag "tanutapi/meteord:node-${NODE_VERSION}-binbuild" tanutapi/meteord:binbuild
