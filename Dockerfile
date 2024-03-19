# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install gerber_renderer package
RUN pip install gerber_renderer

# Define the input Gerber file path
ENV GERBER_FILE="./Gerber_DockerSAO_PCB_DockerSAO_2024-03-15.zip"

# Run app.py when the container launches
CMD ["python", "app.py"]


