FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

# Install dependencies with optimizations
RUN pip install --no-cache-dir --disable-pip-version-check --progress-bar off -r requirements.txt

# Copy the rest of your application code
COPY . .

# Specify the command to run your application
CMD [ "python", "main.py" ]
