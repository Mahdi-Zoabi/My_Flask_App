# Use a base image with Python pre-installed
FROM python:3.11.5-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the port your Flask app will run on
EXPOSE 5000

# Define the command to run your Flask app
CMD ["python", "main.py"]
