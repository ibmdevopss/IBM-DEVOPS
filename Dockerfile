FROM python:3.9-slim

# Install bash (optional, for debugging or compatibility)
RUN apt-get update && apt-get install -y bash

# Set working directory inside the container
WORKDIR /app

# Copy application files from the host into the container
COPY . .

# Install dependencies (if needed, e.g., Flask)
RUN pip install flask

# Run the Flask application
CMD ["python", "app.py"]
