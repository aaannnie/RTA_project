
FROM python:3.11.3-slim-buster

WORKDIR /app   #utworz nowy katalog i ustaw go jako domyslny

COPY app.py .   # skopiuj do katalogu
COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 5000   #port

ENTRYPOINT ["python"]

CMD ["app.py"]   #uruchamia aplikacje
