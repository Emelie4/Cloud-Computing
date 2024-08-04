FROM node:14

WORKDIR /app

COPY . .

RUN npm install -g http-server

EXPOSE 8080

CMD [ "http-server", "." ]
