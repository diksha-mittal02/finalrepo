FROM python:3.10-slim

# Set working directory
WORKDIR /data

# Install system dependencies (including distutils)
RUN apt-get update && apt-get install -y python3-distutils build-essential

# Install Django
RUN pip install django==3.2

# Copy project files
COPY . .

# Expose port
EXPOSE 8000

# Run migrations and start server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]




