# Use an official node image as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install project dependencies
RUN npm install -g http-server

# Expose the port the app runs on
EXPOSE 8080

# Run the app
CMD [ "http-server", "." ]
