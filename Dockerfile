FROM alpine:latest

LABEL org.opencontainers.image.authors="dev@kjuly.com" \
      org.opencontainers.image.licenses=MIT \
      org.opencontainers.image.source=https://github.com/Kjuly/docker-mkdocs \
      org.opencontainers.image.description="A tiny Docker image for MkDocs, based on Alpine Linux with Python3."

# The libraries for image processing (cairo, pngquant) are entirely optional,
#   and only need to be installed if you want to use the social plugin or the optimize plugin.
# Refter to https://squidfunk.github.io/mkdocs-material/plugins/requirements/image-processing
RUN apk add --no-cache py3-pip cairo pngquant && \
    python3 -m venv .venv && source .venv/bin/activate \
    pip install pip setuptools certifi urllib3 requests idna --upgrade && \
    pip install mkdocs && \
    pip cache purge
