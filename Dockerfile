#linux x64
FROM node:current-alpine

LABEL org.opencontainers.image.name="nodejs-image-demo"\
      org.opencontainers.image.description="nodejs image demo"\
      org.opencontainers.image.author="olutola olajide <https:github.com/jidegithub>"

#create directory in container image for app code
RUN mkdir -p /usr/src/app

#copy app code (.) to /usr/src/app in container image
COPY . /usr/src/app

#set working directory context
WORKDIR /usr/src/app

#install dependencies from packages.json
RUN npm install

#command for container to execute
ENTRYPOINT ["node", "app.js"]