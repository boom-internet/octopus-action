# Container image that runs your code
FROM ruby:2.7.5-alpine
LABEL maintainer "Faizal Zakaria<faizal@caterspot.com>"

RUN apk add --no-cache git openssh build-base

RUN gem install bundler -v '1.17.3'

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
