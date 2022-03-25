
FROM nginx

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get install -y python3-pip python3 \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

COPY . /
WORKDIR /
RUN pip install -r requirements.txt

EXPOSE 8083



