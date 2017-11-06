FROM node:latest

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

ADD package.json /usr/src/app/package.json
RUN npm install --silent
RUN nom install react-scripts -g --silent

ADD . /usr/src/app

CMD ["npm", "start"]