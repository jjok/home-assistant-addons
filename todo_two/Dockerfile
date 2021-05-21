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

RUN wget -O app.zip https://github.com/jjok/todo-two-web/archive/refs/tags/v1.0.0.zip && \
    unzip app.zip && \
    rm app.zip && \
    mv todo-two-web-1.0.0 /app

WORKDIR /app

RUN ln -s $(which php8) /usr/bin/php

#RUN php composer.phar install && \
#    ./vendor/bin/phpunit && \
#    php composer.phar install --no-dev
RUN php composer.phar install --no-dev

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
