# Use the latest Playwright base image
FROM mcr.microsoft.com/playwright:v1.55.0-noble

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Run Playwright tests by default
CMD ["npx", "playwright", "test"]
