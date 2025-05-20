
FROM node:22


WORKDIR /usr/src/app


COPY package*.json ./

RUN npm ci --omit=dev

COPY . .


ENV PORT=80

RUN npm run build


EXPOSE 80

CMD ["npm", "run", "start:prod"]