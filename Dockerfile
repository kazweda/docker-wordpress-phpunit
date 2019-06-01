From wordpress:latest

ENV DEBCONF_NOWARNINGS yes

RUN apt-get update
RUN apt-get -y install vim wget subversion mysql-client
RUN wget https://phar.phpunit.de/phpunit-7.5.12.phar &&\
 chmod +x phpunit-7.5.12.phar &&\
 mv phpunit-7.5.12.phar /usr/local/bin/phpunit
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
