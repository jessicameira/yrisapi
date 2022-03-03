FROM ruby:3.1.1

RUN apt-get update && apt-get install -y git curl libpq-dev build-essential nfs-kernel-server nfs-common curl vim git git-flow nodejs postgresql-client

RUN mkdir -p /yrisapi
WORKDIR /yrisapi/

COPY Gemfile /yrisapi/Gemfile
COPY Gemfile.lock /yrisapi/Gemfile.lock
RUN bundle install

COPY . /yrisapi/
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]