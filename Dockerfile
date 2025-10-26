# Use Node.js version 16 as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists) to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files to the container
COPY . .

# Expose port 3000 so the container can be accessed externally
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]