FROM webhippie/golang:1.17 AS build

# renovate: datasource=github-tags depName=alioygur/wait-for
ENV WAIT_FOR_VERSION=master

RUN git clone -b ${WAIT_FOR_VERSION} https://github.com/alioygur/wait-for.git /srv/app/src/github.com/alioygur/wait-for && \
  cd /srv/app/src/github.com/alioygur/wait-for && \
  GO111MODULE=off go install

FROM webhippie/alpine:latest
ENTRYPOINT [""]

RUN apk update && \
  apk upgrade && \
  rm -rf /var/cache/apk/*

COPY --from=build /srv/app/bin/wait-for /usr/bin/
