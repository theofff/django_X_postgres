
FROM nginx

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get install -y python3-pip python3 \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

COPY . /
WORKDIR /django_X_postgres
RUN pip install -r requirements.txt

EXPOSE 8083
CMD ["python3", "mysite/manage.py", "runserver", "0.0.0.0:8083"]



