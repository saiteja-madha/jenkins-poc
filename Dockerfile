FROM node:alpine
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm
RUN pnpm install --prod
COPY . .
EXPOSE 3000
CMD [ "node", "index.js" ]