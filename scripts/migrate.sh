#!/bin/sh
makemigrations.sh
echo 'Executando migrate.sh'
sudo python manage.py migrate --noinput
