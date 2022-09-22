FROM nginx:latest

RUN apt-get update && apt-get install -y python && apt-get install -y python3.9
RUN apt install -y pip && pip install boto3

COPY pythonproject.py pythonproject.py

RUN chmod +x pythonproject.py

CMD ["python3", "./pythonproject.py", 'nginx -g "daemon off;"']