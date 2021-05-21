#!/bin/sh

export APP_ENV=hassio

php /app/bin/rebuild.php
php -d variables_order=EGPCS -S 0.0.0.0:8000 -t /app/public
