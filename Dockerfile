FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y nginx
ADD index.html ./index.html
ENTRYPOINT [ "/usr/sbin/nginx","-g","daemon off;" ]
EXPOSE 80