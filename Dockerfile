# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to /app
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . /app

# Make sure the container exposes the port that the application listens on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
