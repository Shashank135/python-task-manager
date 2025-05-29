# Use an official Python runtime as a base image
# We'll use Python 3.13 as per your preference, in a slim-buster variant for smaller image size.
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the working directory
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
# We will upgrade pip first to ensure compatibility, similar to our Jenkins build.
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the working directory
COPY . .

# Expose the port that Streamlit runs on (default is 8501)
EXPOSE 8501

# Define the command to run your Streamlit application
# Streamlit runs `app.py` by default when you use `streamlit run app.py`
CMD ["streamlit", "run", "app.py", "--server.port", "8501", "--server.enableCORS", "false", "--server.enableXsrfProtection", "false"]

