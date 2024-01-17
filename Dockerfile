FROM asciidoctor/docker-asciidoctor

LABEL maintainer="LordAshram" \
  architecture="amd64/x86_64" \
  org.opencontainers.image.description="Docker image from asciidoc with tools to include PlantUML in doc and generate it." \
  org.opencontainers.image.authors="LordAshram>" \
  org.opencontainers.image.url="https://hub.docker.com/repository/docker/lordashram/asciidoc-plantuml/" \
  org.opencontainers.image.source=""

RUN apk update && \
    apk add graphicsmagick-dev ruby-dev musl-dev gcc && \
    gem install prawn-gmagick && \
    gem install asciidoctor-diagram