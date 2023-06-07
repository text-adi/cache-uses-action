FROM docker:24

LABEL "com.github.actions.name"="Caching uses in github action"
LABEL "com.github.actions.description"="Cache uses during github action execution to speed up github action execution"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL version="0.1"
LABEL repository="https://github.com/text-adi/build-lang-action"
LABEL homepage="https://github.com/text-adi"
LABEL maintainer="text-adi <text-adi@github.com>"

WORKDIR /app

COPY docker-entrypoint.sh .

RUN chmod +x /app/docker-entrypoint.sh

ENTRYPOINT  ["/app/docker-entrypoint.sh"]