# Simple production-ready container
FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# System deps
RUN apt-get update && apt-get install -y --no-install-recommends \    build-essential \    && rm -rf /var/lib/apt/lists/*

# Copy project
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=by_flask_starter
ENV PORT=5000
EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "by_flask_starter:create_app()"]
