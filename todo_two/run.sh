#!/bin/sh

export APP_ENV=hassio

php /app/todo-two-web-master/bin/rebuild.php
php -d variables_order=EGPCS -S 0.0.0.0:8000 -t /app/todo-two-web-master/public
