FROM jenkinsci/blueocean:latest

USER root

RUN apk add --no-cache --update \
    python3 \
    python3-dev \
    && pip3 install virtualenv \
        && pip3 install requests \
        && rm -rf /var/cache/apk/*

USER jenkins
