FROM python:3.5

RUN apt-get update && \
  apt-get install cron rsyslog -y && \
  touch /var/log/curator.log && \
  pip install elasticsearch-curator && \
  pip install certifi

ADD crontab /etc/cron.d/
ADD clean.sh /src/

RUN chmod 0600 /etc/cron.d/crontab && chmod a+x /src/clean.sh

ENV ELASTICSEARCH_HOST=localhost
ENV ELASTICSEARCH_PORT=9200
ENV ELASTICSEARCH_AUTH=user:password

CMD rsyslogd && env > /root/.env && cron -L 15 && tail -f /var/log/syslog /var/log/curator.log
