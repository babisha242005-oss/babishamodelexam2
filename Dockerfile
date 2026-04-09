FROM node:18

WORKDIR /app

# Copy only package files first (better caching)
COPY package*.json ./

RUN npm install

# Then copy rest of code
COPY . .

CMD ["npm", "start"]
