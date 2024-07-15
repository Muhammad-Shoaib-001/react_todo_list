# Use an official Node runtime as a parent image
FROM node:14.17.0

# Set the working directory in the container
WORKDIR /app

# Copy cached dependencies
COPY package*.json ./

# Install dependencies
RUN npm install --quiet

# Copy the rest of the application code to the working directory
COPY . .

# Build your React app (if needed)
# RUN npm run build

# Expose the port your app runs on (if needed)
# EXPOSE 3000

# Command to run your app using CMD which runs when the container starts
# CMD ["npm", "start"]
