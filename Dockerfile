From wordpress:latest

ENV DEBCONF_NOWARNINGS yes

RUN apt-get update
RUN apt-get -y install wget subversion mysql-client
RUN wget https://phar.phpunit.de/phpunit-8.1.6.phar &&\
 chmod +x phpunit-8.1.6.phar &&\
 mv phpunit-8.1.6.phar /usr/local/bin/phpunit
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
