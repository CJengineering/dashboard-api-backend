FROM ruby:3.1.2

# RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
# On copie le fichier local Gemfile, au sein de notre image docker a la location .
COPY Gemfile* .
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "db:migrate"]
CMD ["rails", "server", "-b", "0.0.0.0"]
