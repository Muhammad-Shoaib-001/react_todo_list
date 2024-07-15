FROM node:14.17.0

# Create a directory for the application
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --quiet

# Copy the rest of the application code
COPY . .

# Set permissions explicitly (if needed)
RUN chown -R node:node /app

# Switch to non-root user
USER node

CMD ["npm", "start"]
