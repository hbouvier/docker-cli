FROM alpine:latest

ENV VERSION=1.13.1
WORKDIR /app
RUN apk add --update curl && \
    curl -sO https://get.docker.com/builds/Linux/x86_64/docker-${VERSION}.tgz && \
    tar xzf docker-1.13.1.tgz

FROM alpine:latest
WORKDIR /root/
COPY --from=0 /app/docker/docker /usr/local/bin/
ENTRYPOINT ["docker"]
CMD ["stats"]