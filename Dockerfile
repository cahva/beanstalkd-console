FROM php:5.6
MAINTAINER Markku Virtanen <cahva@po-rno.fi>

# Some defaults for console auth
ENV BEANSTALKD_AUTH false
ENV BEANSTALKD_USER user
ENV BEANSTALKD_PW password

ADD install.sh install.sh
RUN chmod +x install.sh && sleep 1 && ./install.sh && rm install.sh

EXPOSE 2080
CMD bash -c 'BEANSTALK_SERVERS=$BEANSTALKD_PORT_11300_TCP_ADDR:11300 php -S 0.0.0.0:2080 -t /source/public'
