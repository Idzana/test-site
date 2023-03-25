#Build & start
FROM nginx:latest
WORKDIR /app
COPY . .
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
RUN service nginx start