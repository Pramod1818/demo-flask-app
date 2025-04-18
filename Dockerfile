# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container at /app
COPY . .

# Expose the port that the Flask application runs on
EXPOSE 5000

# Define the command to run the Flask application
CMD ["python", "app.py"]
