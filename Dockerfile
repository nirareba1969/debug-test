FROM ruby:3.1.0

RUN mkdir /app

WORKDIR /app

COPY . .
RUN bundle install

CMD ["bundle", "exec", "ruby", "repro.rb"]
