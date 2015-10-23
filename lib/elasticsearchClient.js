'use strict';

const elasticsearch = require('elasticsearch');

let elasticSearchUrl;
if (process.env.ELASTICSEARCH_URL) {
  elasticSearchUrl = process.env.ELASTICSEARCH_URL;
} else {
  throw new Error('Environment variable ELASTICSEARCH_URL not set');
}

module.exports = new elasticsearch.Client({
  host: elasticSearchUrl
});
