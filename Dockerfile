FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get upgrade -y \
    && apt-get install -y nginx php-fpm

ADD nginx.conf /etc/nginx/sites-available/default

EXPOSE 80

CMD /etc/init.d/php7.2-fpm start \
    && nginx -g "daemon off;"