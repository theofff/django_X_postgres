python3 manage.py createsuperuser <<EOF
$ADMIN
admin@example.com
$ADMIN_PASSWORD
$ADMIN_PASSWORD
EOF
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8083
