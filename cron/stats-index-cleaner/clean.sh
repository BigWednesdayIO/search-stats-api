#!/bin/bash

curator --host $ELASTICSEARCH_HOST --port $ELASTICSEARCH_PORT --use_ssl --http_auth $ELASTICSEARCH_AUTH close indices --prefix search-ops --timestring '%Y.%m.%d' --older-than 8 --time-unit days >> /var/log/curator.log 2>&1
