FROM debian:jessie

RUN apt-get update && \
  apt-get install cron rsyslog -y && \
  touch /var/log/cron.log

ADD crontab /etc/cron.d/

RUN chmod 0600 /etc/cron.d/crontab

CMD rsyslogd && cron -L 15 && tail -f /var/log/syslog /var/log/cron.log
