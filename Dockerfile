FROM alpine:latest

# install openssl
RUN apk add --update openssl && \
    rm -rf /var/cache/apk/*

COPY *.ext /
COPY docker-entrypoint.sh /

VOLUME ["/etc/ssl/certs"]
ENTRYPOINT ["/docker-entrypoint.sh"]
