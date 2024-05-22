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



# Use the official CentOS base image
FROM centos:latest

# Install necessary packages (Nginx, SQL, curl, ping)
RUN yum install -y epel-release && \
    yum install -y nginx mariadb curl iputils && \
    yum clean all

# Expose port 8080
EXPOSE 8080

# Set labels (replace with your name and value)
LABEL maintainer="Your Name <your.email@example.com>"

# Copy your custom script (text.sh) into the image
COPY text.sh /usr/local/bin/

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]
