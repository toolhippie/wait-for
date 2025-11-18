FROM ghcr.io/dockhippie/alpine:3.22@sha256:8c689fb24e65bb97d02d9224435dd07c6c94939a09b8bcae903e1bc5b87ae9ad
ENTRYPOINT [""]

# renovate: datasource=github-releases depName=thegeeklab/wait-for
ENV WAIT_FOR_VERSION=0.4.3

RUN apk update && \
  apk upgrade && \
  apk add netcat-openbsd && \
  curl -sSLo /usr/bin/wait-for https://raw.githubusercontent.com/thegeeklab/wait-for/v${WAIT_FOR_VERSION}/wait-for && \
  chmod +x /usr/bin/wait-for && \
  rm -rf /var/cache/apk/*
