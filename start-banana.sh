#!/bin/bash
sed -i -e "s,solr: \"/.*/\",solr: \"$SOLR_HOST:$SOLR_PORT/$SOLR_DOMAIN\",g" /app/banana/src/config.js
sed -i -e "s,\"server\": \"/.*/\",\"server\": \"$SOLR_HOST:$SOLR_PORT/$SOLR_DOMAIN\",g" /app/banana/src/app/dashboards/default.json

cd /app/banana && npm start
