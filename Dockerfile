FROM ghcr.io/dockhippie/alpine:3.23@sha256:a95a9a4236d9d8ea9250ac367ab8d83b161493788c5e05394c74ac5c95320875
ENTRYPOINT [""]

# renovate: datasource=github-releases depName=thegeeklab/wait-for
ENV WAIT_FOR_VERSION=0.4.4

RUN apk update && \
  apk upgrade && \
  apk add netcat-openbsd && \
  curl -sSLo /usr/bin/wait-for https://raw.githubusercontent.com/thegeeklab/wait-for/v${WAIT_FOR_VERSION}/wait-for && \
  chmod +x /usr/bin/wait-for && \
  rm -rf /var/cache/apk/*
