FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY package*.json .

RUN npm install
RUN npm run build

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
