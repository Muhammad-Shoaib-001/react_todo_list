# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Build React app
RUN npm run build

# Expose the port
EXPOSE 3000

# Command to run the React app
CMD ["npm", "start"]
