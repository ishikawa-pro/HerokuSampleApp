FROM rails:latest
MAINTAINER ishikawa_pro

WORKDIR /usr/src/HerokuSampleApp
COPY ./HerokuSampleApp/Gemfile* ./
RUN bundle install
COPY ./HerokuSampleApp ./
