# Build caddy
FROM docker.io/library/caddy:2.5.0-beta.1-builder AS caddy

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.2 \
    --with github.com/hairyhenderson/caddy-teapot-module@v0.0.3-0

ARG VCS_REF
ARG VERSION
ARG BUILD_DATE
LABEL maintainer="Andrew Cole <andrew.cole@illallangi.com>" \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.description="caddy-builder" \
      org.label-schema.name="caddy-builder" \
      org.label-schema.schema-version="2.4.6" \
      org.label-schema.url="http://github.com/illallangi/caddy-builder" \
      org.label-schema.usage="https://github.com/illallangi/caddy-builder/blob/master/README.md" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/illallangi/caddy-builder" \
      org.label-schema.vendor="Illallangi Enterprises" \
      org.label-schema.version=$VERSION
