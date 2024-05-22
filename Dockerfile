# FROM centos
# RUN yum install -y curl nginx sql ping
# EXPOSE 80
# COPY ./text.sh /
# LABEL nodar=devops




# FROM centos


# RUN yum -y install epel-release && \
#     yum -y install nginx mariadb-server curl iputils && \
#     yum clean all


# EXPOSE 8080

# # Copy the text.sh file into the image
# COPY ./text.sh /
# # Run nginx and mariadb on container startup
#  CMD ["nginx", "-g", "daemon off;"]




# Base image
FROM centos:latest

# Install necessary packages
RUN yum -y install epel-release && \
    yum -y install nginx mariadb-server curl iputils && \
    yum clean all
