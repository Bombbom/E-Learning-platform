FROM python:3.12.3

RUN apt-get update -qq  \
    && apt-get install -y build-essential python3-dev libpcre3 libpcre3-dev\
    && rm -rf /var/lib/apt/lists/*
# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt .

RUN python -m pip install -r requirements.txt
RUN python -m pip install psycopg[binary]

COPY . .

RUN chown -R www-data:www-data /code/educa/