FROM docker.io/nginxinc/nginx-unprivileged:stable-alpine
COPY index.html /usr/share/nginx/html
