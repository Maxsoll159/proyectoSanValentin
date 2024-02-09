# Stage 1: Base stage for both development and production
FROM node:18.19.0 AS base
WORKDIR /app
COPY package*.json ./
RUN npm install

# Stage 2: Development environment
FROM base AS dev
ENV NODE_ENV=development
COPY . .
CMD ["npm", "run", "dev"]

# Stage 3: Build stage for production
FROM base AS builder
COPY . .
RUN npm run build

# Stage 4: Production environment
FROM nginx:1.25.3-alpine-slim AS prod
COPY --from=builder /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
