FROM python:3.9-alpine3.13
LABEL maintener="rubenfh"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

ARG DEV=false
RUN python -m venv /py
RUN /py/bin/pip install --upgrade pip
RUN apk add --update --no-cache postgresql-client && \
    apk add --update --no-cache --virtual .tmp-buimd-deps \
        build-base postgresql-dev musl-dev
RUN /py/bin/pip install -r /tmp/requirements.txt
RUN if [ $DEV = "true" ]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
    fi
RUN rm -rf /tmp
RUN adduser --disabled-password --no-create-home django-user

ENV PATH="/py/bin:$PATH"

USER django-user