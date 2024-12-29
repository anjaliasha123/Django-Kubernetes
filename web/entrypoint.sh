#!/bin/bash
APP_PORT=${PORT:-8000}
echo $APP_PORT
cd /app/
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:application --bind "0.0.0.0:${APP_PORT}"
# /opt/venv/bin/waitress-serve --listen=127.0.0.1:8000 django_k8s.wsgi:application
# ../venv/Scripts/waitress-serve   --listen=127.0.0.1:$APP_PORT django_k8s.wsgi:application 