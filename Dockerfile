FROM ruby:latest AS build
COPY . /app
WORKDIR /app
RUN bundle install \
    && jekyll build

FROM nginx:alpine AS final
COPY --from=build /app/_site /usr/share/nginx/html
