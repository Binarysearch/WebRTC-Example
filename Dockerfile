FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY ./client/ ./client/
COPY ./server/ ./server/
COPY ./key.pem ./key.pem
COPY ./cert.pem ./cert.pem

EXPOSE 8080
CMD [ "node", "./server/server.js" ]