# Base image
FROM node:18

# Create working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy entire project
COPY . .

# Expose backend port
EXPOSE 8080

# Start the server
CMD ["node", "server.js"]
