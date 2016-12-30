# Base image is python
FROM python:latest

# Author: Dr. Peter
MAINTAINER Dr. Peter <peterindia@gmail.com>

# Install redis driver for python and the redis mock
RUN pip install redis && pip install mockredispy

# Copy the test and source to the Docker image
ADD src/ /src/

ENV home=/src/

# Change the working directory to /src/
WORKDIR $home

# Make unittest as the default execution
ENTRYPOINT python3 -m unittest