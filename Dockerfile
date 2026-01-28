FROM ghcr.io/dockhippie/alpine:3.23@sha256:a674aadc1cccd2f424673c7596eff46336210016a50c8082849071f78bb15105
ENTRYPOINT [""]

# renovate: datasource=github-releases depName=thegeeklab/wait-for
ENV WAIT_FOR_VERSION=0.4.3

RUN apk update && \
  apk upgrade && \
  apk add netcat-openbsd && \
  curl -sSLo /usr/bin/wait-for https://raw.githubusercontent.com/thegeeklab/wait-for/v${WAIT_FOR_VERSION}/wait-for && \
  chmod +x /usr/bin/wait-for && \
  rm -rf /var/cache/apk/*
