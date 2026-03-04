FROM ghcr.io/dockhippie/alpine:3.23@sha256:ab739d6c611c2153c817d6b8f56a4359be087703d563d539e08a475f2fcb72d3
ENTRYPOINT [""]

# renovate: datasource=github-releases depName=thegeeklab/wait-for
ENV WAIT_FOR_VERSION=0.4.3

RUN apk update && \
  apk upgrade && \
  apk add netcat-openbsd && \
  curl -sSLo /usr/bin/wait-for https://raw.githubusercontent.com/thegeeklab/wait-for/v${WAIT_FOR_VERSION}/wait-for && \
  chmod +x /usr/bin/wait-for && \
  rm -rf /var/cache/apk/*
