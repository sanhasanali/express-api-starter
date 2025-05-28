# Pakai official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json dulu, untuk cache npm install
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy semua source code ke container
COPY . .

# Expose port default Express (biasanya 3000)
EXPOSE 3000

# Jalankan aplikasi dengan perintah start yang ada di package.json
CMD ["npm", "start"]
