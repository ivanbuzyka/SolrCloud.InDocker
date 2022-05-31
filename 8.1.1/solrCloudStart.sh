#!/bin/sh

# The command to start the SolrCloud using integrated Zookeeper with one solr node
solr-8.1.1/bin/solr start -f -cloud -p 9993 -s solr-8.1.1/example/cloud/node1/solr -force