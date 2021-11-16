FROM python:3.10-alpine

WORKDIR /usr/src/teslamate-abrp

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-u", "./teslamate_mqtt2abrp.py" ]
