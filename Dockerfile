FROM alpine:3.14

LABEL org.opencontainers.image.authors="dev@kjuly.com" \
      org.opencontainers.image.licenses=MIT \
      org.opencontainers.image.source=https://github.com/Kjuly/docker-mkdocs \
      org.opencontainers.image.description="A tiny Docker image for MkDocs, based on Alpine Linux with Python3."

RUN apk add --no-cache py3-pip && \
    pip install pip setuptools certifi urllib3 requests idna --upgrade && \
    pip install mkdocs && \
    pip cache purge
