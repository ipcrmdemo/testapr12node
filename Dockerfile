FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install req'd
COPY package*.json ./
RUN npm install --only=production

# Bundle app source
RUN mkdir dist
COPY dist/. dist/.

# Configure
EXPOSE 8080
CMD [ "npm", "start" ]
    