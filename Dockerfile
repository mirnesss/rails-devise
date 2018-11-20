FROM ruby:2.3.1

RUN apt-get update && \
    apt-get install -y nodejs 

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 80

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "80"]




