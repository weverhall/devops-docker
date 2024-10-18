FROM node:16-bookworm-slim

EXPOSE 5000

WORKDIR /app

COPY ./material-applications/example-frontend/package*.json .

RUN npm install && npm install -g serve

COPY ./material-applications/example-frontend .

RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]