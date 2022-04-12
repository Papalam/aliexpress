FROM python:3.10-slim

WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./app/ /usr/src/app/
COPY ./.env /usr/src/app/
COPY requirements.txt /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "update_ali_data.py" ]