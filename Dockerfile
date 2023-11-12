FROM php:8.1-apache
RUN apt-get update && apt-get upgrade -y
RUN apt install -y git nano curl libzip-dev unzip && docker-php-ext-install zip  
RUN curl -o /tmp/cards_png.zip https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/vector-playing-cards/PNG-cards-1.3.zip
RUN unzip /tmp/cards_png.zip -d /var/www/html
RUN mv /var/www/html/PNG-cards-1.3/* /var/www/html/ && rm -Rf /var/www/html/PNG-cards-1.3
