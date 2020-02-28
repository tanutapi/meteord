FROM tanutapi/meteord:base
MAINTAINER Tanut Apiwong

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-12.10.0}

ONBUILD RUN bash $METEORD_DIR/lib/install_meteor.sh
ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/lib/build_app.sh
