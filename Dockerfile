From wordpress:latest

ENV DEBCONF_NOWARNINGS yes

RUN apt-get update
RUN apt-get -y install wget subversion mysql-client
RUN cd /root &&\
 wget https://phar.phpunit.de/phpunit-8.1.6.phar &&\
 chmod +x phpunit-8.1.6.phar &&\
 mv phpunit-8.1.6.phar /usr/local/bin/phpunit
