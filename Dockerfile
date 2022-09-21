FROM nginx:latest

RUN apt-get update && apt-get install -y python && apt-get install -y python3.9
RUN apt-get install pip && pip install boto3

COPY pythonproject.py pythonproject.py

RUN chmod +x pythonproject.py

CMD ./pythonproject.py && nginx -g 'daemon off;'