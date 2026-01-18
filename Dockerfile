FROM python:3.9-slim

WORKDIR /app

COPY front-init/ /app/front-init/
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY main.py .

EXPOSE 3000
EXPOSE 5000

CMD ["python", "main.py"]