FROM jenkinsci/blueocean:latest

USER root

RUN apk add --no-cache --update \
    python3 \
    python3-dev \
    && pip3 install virtualenv \
    && rm -rf /var/cache/apk/*

USER jenkins
