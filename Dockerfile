FROM ubuntu:20.04
RUN apt update && \
    apt install nginx -y
ADD user/* /var/www/html/
ENTRYPOINT ["nginx","-g","daemon off;"]

