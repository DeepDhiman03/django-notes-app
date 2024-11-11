FROM python:3.9

WORKDIR /app/backend

# Copy and install dependencies
COPY requirements.txt /app/backend
RUN pip install -r requirements.txt

# Copy the rest of the application
COPY . /app/backend

# Expose the necessary port
EXPOSE 8000

# Ensure the application stays running and logs are available
CMD python /app/backend/manage.py runserver 0.0.0.0:8000

