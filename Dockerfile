FROM node:14.16.0-alpine3.13

ENV NUXTJS_HOME=/app

RUN mkdir -p $NUXTJS_HOME

WORKDIR $NUXTJS_HOME

COPY . $NUXTJS_HOME

# install dependencies
RUN npm install
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]
