FROM nginx

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get install -y python3-pip python3 \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /
RUN git clone https://github.com/theofff/django_X_postgres.git    
RUN pip install -r /django_X_postgres/requirements.txt

EXPOSE 8083
CMD ["python3", "/django_X_postgres/my_site/manage.py", "runserver", "0.0.0.0:8083"]
