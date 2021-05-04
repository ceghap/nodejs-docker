FROM node:15
ENV PORT 3000
ARG NODE_ENV
WORKDIR /app
COPY ./package.json .
RUN if [ "$NODE_ENV" = "development" ]; then npm install; else npm install --only=production; fi
COPY . .
EXPOSE $PORT
CMD ["node", "index.js"]