# Step 1: Use an official Node.js runtime as a parent image
FROM node:20-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files
COPY . /app

# Step 4: Install dependencies
RUN npm install

# # Step 5: Copy the rest of the application code
# COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 3000

# Step 7: Start the app
CMD node index.js
