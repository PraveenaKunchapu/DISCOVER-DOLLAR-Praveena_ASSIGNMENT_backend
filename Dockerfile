# Use official Node.js image
FROM node:18

# Create working directory inside container
WORKDIR /usr/src/app

# Copy package files first (for layer caching)
COPY package.json package-lock.json* ./

# Install backend dependencies
RUN npm install

# Copy the rest of the backend source code
COPY . .

# Expose backend port
EXPOSE 8080

# Start the server
CMD ["node", "server.js"]
