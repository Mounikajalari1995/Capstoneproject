FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --disable-pip-version-check --no-progress --no-use-pep517 -r requirements.txt


COPY . .

EXPOSE 5000

CMD ["python", "main.py"]