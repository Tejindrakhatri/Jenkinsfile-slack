# Using the official Node.js LTS (Long Term Support) image as our base image
FROM node:lts

# Setting the working directory inside the container
WORKDIR /usr/src/app

# Copying our package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Installing the application dependencies inside the container
RUN npm install

# Copying the rest of our application to the container
COPY . .

# Exposing the port the app runs on (assuming it runs on port 3000)
EXPOSE 3000

# Command to run our application
CMD [ "node", "app.js" ]
