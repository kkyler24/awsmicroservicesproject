FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py/app/

# Install packages from requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD [ "python3", "app.py" ]

# make sure you remember formatting and what this does, its creating a new working directory, copying the app into that directory, installing ncessary packages, getting internet access then launching the app. 