# Use an official Node runtime as a parent image
FROM node:14.17.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build your React app
RUN npm run build

# Expose the port your app runs on
EXPOSE 3000

# Command to run your app using CMD which runs when the container starts
CMD ["npm", "start"]
