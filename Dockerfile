#if you want to learn how to Dockerizing a Node.js web app you can check the link below
# https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

FROM node:16

WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./



# If you are building your code for production
# RUN npm ci --only=production
RUN npm install


# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
