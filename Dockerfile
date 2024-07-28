# Fetching the latest node image on alpine linux
FROM node:18-alpine

# Setting up the work directorys
WORKDIR /usr/src/app

# Installing dependencies
COPY package.json .
RUN npm install

# Copying all the files in our project
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]