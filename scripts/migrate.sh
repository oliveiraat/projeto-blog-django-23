#!/bin/sh
makemigrations.sh
echo 'Executando migrate.sh'
python manage.py migrate --noinput
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@example.com', 'irntcmp')" | python manage.py shell
exec "$@"
