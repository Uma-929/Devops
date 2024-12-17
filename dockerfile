FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

# Clean npm cache and set a reliable registry
RUN npm cache clean --force
RUN npm config set registry https://registry.npmjs.org/

# Install dependencies
RUN npm install

# Copy source files and build
COPY . .
RUN npm run build

EXPOSE 80

CMD ["npx", "serve", "-s", "build", "-l", "80"]
