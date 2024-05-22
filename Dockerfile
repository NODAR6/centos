FROM centos
RUN yum install -y curl nginx sql ping
EXPOSE 80
COPY ./text.sh /
LABEL nodar=devops