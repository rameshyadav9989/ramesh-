FROM node:18

# Create app directory
WORKDIR /user/src/app

# Install app dependencies
# A wildcard is used to ensure both packeg.json AND package-lock.json are copied
# Where available (npm@5+)
COPY package*.json ./

RUN npm install
# if you are buliding your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["node", "server.js"]
