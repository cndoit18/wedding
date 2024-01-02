FROM node:10-alpine

COPY package*.json ./
RUN npm install
COPY . .
ARG PORT=80
EXPOSE ${PORT}
CMD [ "node", "app.js", "--silent", "--port=${PORT}", "--prod" ]
