FROM ubuntu:vivid
MAINTAINER Masashi Okumura <masao@classcat.com>

RUN apt-get update && apt-get -y upgrade \
  && apt-get install -y language-pack-en language-pack-en-base 

RUN update-locale LANG="en_US.UTF-8"

RUN apt-get install -y openssh-server supervisor mysql-client

# sshd
RUN mkdir -p /var/run/sshd

RUN sed -ri "s/^PermitRootLogin\s+.*/PermitRootLogin yes/" /etc/ssh/sshd_config
# RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

# supervisord
ADD assets/supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 22

CMD echo "root:${ROOT_PASSWORD}" | chpasswd; /usr/sbin/sshd -D
