# Use the official Node.js image as a base
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the React app
RUN npm run build

# Expose port 80 for the application
EXPOSE 80

# Start the React app
CMD ["npx", "serve", "-s", "build", "-l", "80"]
