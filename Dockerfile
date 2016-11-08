FROM quay.io/trunk/ruby-base:1.8
WORKDIR /app

ENV GEMINABOX_DATA "/data"
COPY rootfs /
COPY [".", "/app/"]

RUN bundle install --without=development test

EXPOSE 80
VOLUME $GEMINABOX_DATA

