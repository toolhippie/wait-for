FROM ghcr.io/dockhippie/alpine:3.23@sha256:3bf7f59a8892a380680d78bca46222cf369b5666a04e682c6a9622b32391fd8d
ENTRYPOINT [""]

# renovate: datasource=github-releases depName=thegeeklab/wait-for
ENV WAIT_FOR_VERSION=0.4.3

RUN apk update && \
  apk upgrade && \
  apk add netcat-openbsd && \
  curl -sSLo /usr/bin/wait-for https://raw.githubusercontent.com/thegeeklab/wait-for/v${WAIT_FOR_VERSION}/wait-for && \
  chmod +x /usr/bin/wait-for && \
  rm -rf /var/cache/apk/*
