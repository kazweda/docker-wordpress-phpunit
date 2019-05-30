From wordpress:latest

ENV DEBCONF_NOWARNINGS yes

RUN apt-get update
RUN apt-get -y install wget subversion mysql-client
