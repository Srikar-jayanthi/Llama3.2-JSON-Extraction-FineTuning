FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --default-timeout=100 -r requirements.txt
COPY . .
EXPOSE 7860
CMD ["python", "app.py"]
