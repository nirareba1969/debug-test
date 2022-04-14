FROM ruby:3.1.0

RUN gem install debug -v 1.5.0

RUN mkdir /app
WORKDIR /app
COPY . .

CMD ["ruby", "repro.rb"]
