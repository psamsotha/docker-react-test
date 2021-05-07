FROM node:alpine3.13 as build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build


FROM nginx:1.19.10 as prod
EXPOSE 5000
ENV PORT=5000
COPY --from=build /app/config/nginx/templates /etc/nginx/templates
COPY --from=build /app/build /usr/share/nginx/html
