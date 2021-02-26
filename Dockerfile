FROM alpine:latest

# install openssl
RUN apk add --update openssl && \
    rm -rf /var/cache/apk/*

VOLUME ["/etc/ssl/certs"]
CMD "/bin/sh"
