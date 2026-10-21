FROM python:3.13-slim
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Set a working directory
WORKDIR /app

# Copy files into place
COPY mqtt.py test.py requirements.txt mqtt.conf /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-u", "mqtt.py"]


# commands dir
#VOLUME ["/app/commands/"]

# set conf path
#ENV BROADLINKMQTTCONFIG="/opt/broadlink-mqtt/mqtt.conf"
#ENV BROADLINKMQTTCONFIGCUSTOM="/opt/broadlink-mqtt/conf/custom.conf"

# finally, copy the current code (ideally we'd copy only what we need, but it
#  is not clear what that is, yet)
#COPY . /opt/broadlink-mqtt

# run process
#CMD python mqtt.py
