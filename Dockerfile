FROM rails:latest
MAINTAINER ishikawa_pro

WORKDIR /usr/src/HerokuSampleApp
COPY ./HerokuSampleApp/Gemfile* ./
RUN bundle install
COPY ./HerokuSampleApp ./

CMD ["rails","s", "-b", "0.0.0.0"]
