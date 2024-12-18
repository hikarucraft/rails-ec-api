FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /ec_api
WORKDIR /ec_api
ADD Gemfile /ec_api/Gemfile
ADD Gemfile.lock /ec_api/Gemfile.lock
RUN bundle install
ADD . /ec_api