FROM nginx:1.15
LABEL MAINTAINER="Hossein | https://hossein.cloud"

COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

