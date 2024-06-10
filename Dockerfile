FROM python:3.10.14-slim-bullseye

WORKDIR /app

COPY . .

RUN apt-get update \
    && apt-get install libglib2.0-dev libgl1-mesa-glx -y \
    && pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["bash", "entrypoint.sh"]

