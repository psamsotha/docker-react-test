FROM node:alpine3.13
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:1.19.10
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html
