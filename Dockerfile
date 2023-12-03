FROM python:3.8.7-slim
LABEL authors="Davit Amirkhanyan"
COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install pip --upgrade && \
    /opt/venv/bin/pip install -r requirements.txt
RUN chmod +x entrypoint.sh

#ENTRYPOINT "/app/entrypoint.sh"