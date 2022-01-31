# our base image
FROM alpine:latest
# Install python and pip
RUN apk add --update py3-pip
# upgrade pip
RUN pip install --upgrade pip
# install Python modules needed by the Python app
RUN pip install --no-cache-dir Flask
# copy files required for the app to run
COPY app.py /usr/src/app/
#COPY templates/index.html /usr/src/app/templates/
# tell the port number the container should expose
EXPOSE 5000
#EXPOSE 443
# run the application
CMD ["python3", "/usr/src/app/app.py"]
