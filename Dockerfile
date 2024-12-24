# Use a Node.js base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy only package.json and package-lock.json first to leverage Docker's layer caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["node", "app.js"]

