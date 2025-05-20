FROM node:22


WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .


ENV PORT=80

RUN npm run build


EXPOSE 80

CMD ["npm", "run", "start:prod"]