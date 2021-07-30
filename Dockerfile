FROM node:14-alpine
WORKDIR /usr/src/app
COPY package.json ./
COPY package-lock.json ./
COPY bs-config.json ./
RUN npm install --silent
EXPOSE 3000
CMD ["npm", "start"]
