#!/bin/bash

curator --host $ELASTICSEARCH_HOST --port $ELASTICSEARCH_PORT --use_ssl --http_auth $ELASTICSEARCH_AUTH snapshot --repository search-analytics-snapshots indices --prefix search-ops --timestring '%Y.%m.%d' --older-than 8 --time-unit days >> /var/log/curator.log && \
curator --host $ELASTICSEARCH_HOST --port $ELASTICSEARCH_PORT --use_ssl --http_auth $ELASTICSEARCH_AUTH delete indices --prefix search-ops --timestring '%Y.%m.%d' --older-than 8 --time-unit days >> /var/log/curator.log
