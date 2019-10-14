ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache php7 \
                       php7-dom \
                       php7-json \
                       php7-mbstring \
                       php7-opcache \
                       php7-openssl \
                       php7-phar \
                       php7-tokenizer \
                       php7-xml \
                       php7-xmlwriter

WORKDIR /app

RUN wget https://github.com/jjok/todo-two-web/archive/master.zip && \
    unzip master.zip

WORKDIR /app/todo-two-web-master

COPY composer.sh ./
RUN sh composer.sh && \
    rm composer.sh

#RUN php composer.phar install && \
#    ./vendor/bin/phpunit && \
#    php composer.phar install --no-dev
RUN php composer.phar install --no-dev

# Copy data for add-on
COPY run.sh /
#RUN chmod a+x /run.sh

#CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
CMD [ "sh", "/run.sh" ]
