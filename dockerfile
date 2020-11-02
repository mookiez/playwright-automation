FROM mcr.microsoft.com/playwright:bionic
WORKDIR /usr/src/app
COPY package.json package*.json ./
RUN npm ci
COPY . .
RUN npm run build
CMD ["node", "./dist/app.js"]