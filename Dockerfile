FROM nginx:latest

WORKDIR /var/lib

RUN echo 'The nginx image was created on ' $(date). >> nginxCreation.txt