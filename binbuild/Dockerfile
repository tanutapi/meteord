FROM tanutapi/meteord:base
MAINTAINER Tanut Apiwong

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-12.16.1}

COPY scripts/install_binbuild_tools.sh $METEORD_DIR/install_binbuild_tools.sh
COPY scripts/rebuild_npm_modules.sh $METEORD_DIR/rebuild_npm_modules.sh

RUN bash $METEORD_DIR/install_binbuild_tools.sh
