FROM ruby:2.6.5-alpine
RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev \
  sqlite-dev \
  postgresql-dev \
  git \
  nodejs \
  yarn \
  tzdata \
  && rm -rf /var/cache/apk/*
RUN mkdir -p /src/app
WORKDIR /src/app
COPY Gemfile* ./
ENV BUNDLE_PATH /box
ENV GEM_HOME /box
ENV PATH "/box/bin:${PATH}"