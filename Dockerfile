FROM arm32v7/python:3.10-rc-alpine

WORKDIR /volume1/docker/temp

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-u", "./teslamateMqttToABRP.py" ]
