FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy only necessary files
COPY feeder.py .

# Install required dependencies
RUN pip install paho-mqtt

# Command to run the application
CMD ["python", "feeder.py"]
