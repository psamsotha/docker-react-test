FROM node:alpine3.13 as build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:1.19.10 as prod
EXPOSE 80
COPY --from=build /app/build /usr/share/nginx/html
