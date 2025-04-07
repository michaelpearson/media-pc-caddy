FROM caddy:builder-alpine AS builder
RUN GOTOOLCHAIN=go1.24.1 xcaddy build --with github.com/greenpau/caddy-security
FROM caddy:alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
