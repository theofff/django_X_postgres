winpty python3 /mysite/manage.py createsuperuser <<EOF
$ADMIN
admin@example.com
$ADMIN_PASSWORD
$ADMIN_PASSWORD
EOF
python3 /mysite/manage.py migrate
python3 /mysite/manage.py runserver 0.0.0.0:8083
