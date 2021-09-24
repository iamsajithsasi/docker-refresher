FROM node:14.17.6-alpine
WORKDIR /app
COPY . /app/
CMD node simple.js