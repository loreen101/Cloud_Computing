# our base image
FROM php:7.4-apache
#it is used to refresh the list of package sources before installing any packages and It ensures that you’re installing the latest versions of packages and their dependencies.
RUN apt-get update && apt upgrade -y
# we will install mysqli PHP extension that is used to connect php apache server with MYSQL server
RUN docker-php-ext-install mysqli 
# our current directory we work on to get the instruction from it
WORKDIR /project
#it is used to copy files from host filesystem to a destination in the container file 
COPY . /var/www/html/
