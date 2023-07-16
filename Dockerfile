FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/mastercactapus/caddy2-proxyprotocol \
    --with github.com/greenpau/caddy-security

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
