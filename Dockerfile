FROM alpine:3.14
RUN apk add --no-cache py3-pip && pip3 install mkdocs
