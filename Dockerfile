FROM python:3

WORKDIR /data

# Install Django
RUN pip install django==3.2

# Copy project files
COPY . .

# Expose port for Django dev server
EXPOSE 8000

# Run migrations at runtime, then start the server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]



