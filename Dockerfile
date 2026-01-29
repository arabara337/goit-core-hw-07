FROM python:3.11-slim

WORKDIR /app

COPY Pipfile Pipfile.lock ./

RUN pip install pipenv \
    && pipenv install --system --deploy

COPY . .

CMD ["python", "main.py"]
