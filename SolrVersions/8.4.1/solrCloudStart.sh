#!/bin/sh

# These 2 commands will be run in parallel.
# First one will instruct integrated Zookeeper to use HTTPS
# Second one will start the SolrCloud using integrated Zookeeper with one sole node
solr-8.4.1/server/scripts/cloud-scripts/zkcli.sh -zkhost localhost:2181 -cmd clusterprop -name urlScheme -val https &
solr-8.4.1/bin/solr start -f -cloud -p 9993 -s solr-8.4.1/example/cloud/node1/solr -force