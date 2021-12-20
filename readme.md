# Get started

## To build

docker compose build

## To run as SolrCloud

Make sure port 9993 is free on your host machine, if not - use another one in docker-compose.yml (update it before ":")
docker compose up -d

## To stop

docker compose down

## To reset any persisted collections

docker compose down -v

## What is solr-8.1.1-overrides?

This folder contain some files that we need to override in order to:

1. Solr.in.cmd with configured SSL properties
2. Have a separate folder for running SolrCloud Node with Zookeeper port set to 2181

**Note**: when container stopped/removed - all collections are removed
**Note**: Solr process is run as root user which is not recommended (that is why we need that -force parameter)

## Next steps (to improve here)

1. Add support for Solr 8.4 and 8.8.2
2. Use proper user (not root one)
3. Pass solr port as parameter
