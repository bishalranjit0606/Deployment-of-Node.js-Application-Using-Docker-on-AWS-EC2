# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy rest of the app
COPY . .



# Expose the port
EXPOSE 3000


CMD ["node", "app.js"]
