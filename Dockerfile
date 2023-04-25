FROM ruby:3.1.2-slim
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    less \
    git \
    telnet \
    nodejs \
    sqlite3 \
    libsqlite3-dev \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /app
WORKDIR /app

COPY Gemfile* /app/

RUN gem install bundler -v 2.1.4 && \
  bundle install --jobs 20

COPY . /app
