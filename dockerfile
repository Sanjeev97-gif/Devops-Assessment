# Use a lightweight base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . .

# Install Flask and dependencies
RUN pip install --no-cache-dir Flask

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
