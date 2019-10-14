cat /data/options.json
php /app/todo-two-web-master/bin/rebuild.php
APP_ENV=hassio php -d variables_order=EGPCS -S 0.0.0.0:8000 -t /app/todo-two-web-master/public
