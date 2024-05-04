FROM alpine:3.14
RUN apk add --no-cache py3-pip
RUN pip3 install mkdocs
