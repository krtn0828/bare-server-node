FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY . .

RUN npm install -g typescript
RUN npm install
RUN npm run build

EXPOSE 8080

CMD ["npm", "start"]
