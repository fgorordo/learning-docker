## deps-stage-start
FROM node:19.2-alpine3.16 as deps
WORKDIR /app
COPY package.json ./
RUN npm install
## deps-stage-end

## builder-stage-start
FROM node:19.2-alpine3.16 as builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run test
## builder-stage-end

## prod-deps-stage-start
FROM node:19.2-alpine3.16 as prod-deps
WORKDIR /app
COPY package.json ./
RUN npm install --prod
## prod-deps-stage-end

##runner-stage-start
FROM node:19.2-alpine3.16 as runner
WORKDIR /app
COPY --from=prod-deps /app/node_modules ./node_modules
COPY app.js ./
COPY tasks/ ./tasks
CMD ["node", "app.js"]
##runner-stage-start