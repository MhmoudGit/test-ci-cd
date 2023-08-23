FROM python:3.11.4-slim

COPY ./requirements.txt /app/requirements.txt
COPY ./main.py /app/main.py

WORKDIR /app

RUN pip install -r /app/requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]