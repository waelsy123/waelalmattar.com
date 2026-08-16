FROM caddy:2-alpine
WORKDIR /srv
COPY index.html .
CMD ["sh", "-c", "caddy file-server --listen :${PORT:-80} --root /srv"]
