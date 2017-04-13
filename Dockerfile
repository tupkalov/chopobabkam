FROM node:7.7.3
RUN npm i -g nodemon
COPY ./package.json /deps/package.json
WORKDIR /deps
RUN npm i
VOLUME /deps/app
WORKDIR /deps/app
CMD nodemon entry.js