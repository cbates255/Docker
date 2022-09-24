FROM nginx:latest

WORKDIR /var/tmp

RUN apt-get update && \
apt-get install s3fs -y && \
s3fs dockerproject121587 /var/tmp -o allow_other && \
echo 'The nginx image was created on ' $(date). >> nginxCreation.txt