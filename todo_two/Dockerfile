ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache git \
                       php8 \
                       php8-dom \
                       php8-json \
                       php8-mbstring \
                       php8-opcache \
                       php8-openssl \
                       php8-phar \
                       php8-tokenizer \
                       php8-xml \
                       php8-xmlwriter

WORKDIR /app

RUN wget https://github.com/jjok/todo-two-web/archive/master.zip && \
    unzip master.zip && \
    rm master.zip

WORKDIR /app/todo-two-web-master

RUN ln -s $(which php8) /usr/bin/php

#RUN php composer.phar install && \
#    ./vendor/bin/phpunit && \
#    php composer.phar install --no-dev
RUN php composer.phar install --no-dev

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
