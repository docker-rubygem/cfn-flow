FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.0

RUN gem install cfn-flow --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cfn-flow"]
CMD ["--help"]
