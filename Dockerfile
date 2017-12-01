From node:7-slim
ENV NODE_ENV=production
COPY package*.json ./
RUN npm install --only=production
COPY . .
Expose 3000
VOLUME ['/data']
CMD [ "npm", "start" ]