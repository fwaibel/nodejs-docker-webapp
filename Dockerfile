# Grab a Node base image from DockerHub: https://hub.docker.com/_/node/
FROM node:6.9.1

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]
