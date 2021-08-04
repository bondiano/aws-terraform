FROM ruby:3.0.1-alpine

RUN apk update && apk add --no-cache build-base bash git vim curl python3

RUN mkdir /app
WORKDIR /app
ADD . /app

RUN bundle install

EXPOSE 4000

CMD bash -c "bundle exec rackup"
