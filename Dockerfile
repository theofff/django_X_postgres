FROM nginx

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get install -y python3-pip python3 \
    && rm -rf /var/lib/apt/lists/*
    
COPY . /
RUN pip install -r requirements.tx

EXPOSE 8083
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8083"]
