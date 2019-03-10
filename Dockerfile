# BASIC INFO: image, author and environment variable (avoid Python buffers data)
FROM python:3.7-alpine
MAINTAINER Manuel Vargas Tapia
ENV PYTHONUNBUFFERED 1


# INSTRUCTIONS:

# Copy our local file to the docker image file
COPY ./requirements.txt /requirements.txt

# Install it into image according to requirements ("-r" stands for "--requirements")
RUN pip install -r /requirements.txt

# Create an empty folder, switch to it as default dir and copy local code
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# User that will run app using Docker ("-D" means "only run") as a security measure
RUN adduser -D user

# Switch to that user
USER user
