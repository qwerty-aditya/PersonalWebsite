# Use the official Python image from Docker Hub
FROM python:3.10.14-bookworm

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code to the working directory
COPY . .

# Expose the Streamlit default port
EXPOSE 8501
