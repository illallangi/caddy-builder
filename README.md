# Caddy

Caddy with some plugins, for use in other docker images

## Usage

    # main image
    FROM docker.io/library/debian:latest
    
    # install caddy
    COPY --from=ghcr.io/illallangi/caddy-builder:latest /usr/bin/caddy /usr/local/bin/caddy
