# 1. Use official Playwright image (includes browsers)
FROM mcr.microsoft.com/playwright:v1.47.0-jammy

# 2. Set working directory
WORKDIR /app

# 3. Copy package.json & lock file first for caching
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy everything else
COPY . .

# 6. Run tests (Hello World)
CMD ["npx", "playwright", "test"]
