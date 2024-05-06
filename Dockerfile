FROM alpine:3.14

LABEL org.opencontainers.image.source=https://github.com/Kjuly/docker-mkdocs
LABEL org.opencontainers.image.description="A tiny Docker image for MkDocs, based on Alpine Linux with Python3."
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --no-cache py3-pip && pip3 install mkdocs
