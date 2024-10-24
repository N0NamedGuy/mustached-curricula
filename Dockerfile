FROM node:19.3.0 as frontend-build

WORKDIR /app

ENV PATH /app/node_module/.bin:$PATH

COPY public/ ./public
COPY index_en.yaml ./
COPY index_pt.yaml ./
COPY index.mustache ./
COPY package.json ./
COPY package-lock.json ./
RUN npm ci
RUN npm run build

FROM nginx:stable-alpine as nginx
COPY --from=frontend-build /app/public /usr/share/nginx/html
EXPOSE 80
