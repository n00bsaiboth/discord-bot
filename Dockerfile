# Use official Node.js LTS (small & stable)
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install only production dependencies
RUN npm install --omit=dev

# Copy rest of the source code
COPY . .

# Run the bot
CMD ["npm", "start"]
