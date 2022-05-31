# Get started

## Prerequisites

1. Since the simplified image does not provide the HTTPS, the prerequisite is to have SSL offloading on the network facility in front on the container.
2. The simplified image does not support volumes to persist collections permanently, therefore be ready that collections will be wiped out when container removed


## To run

Make sure port 9993 is free on your host machine, if not - use another one in docker-compose.yml (update it before ":")
Go to the folder with the desired Solr version (e.g. ```./SolrVersions/8.1.1```) Run:

 ```docker compose up -d```

## To build

If you are going to do any changes and build images, run

```docker compose build```

## To stop

The following will stop and remove containers.
Any existing collection will persist in the Docker volume

```docker compose down```

## What is solr-8.1.1-overrides?

This folder contain some files that we need to override in order to configure SSL and make sure we can persist collections:

1. Have a separate folder for running SolrCloud Node with Zookeeper port set explicitly to 2181.

**Note**: Solr process is run as Linux root user which is not recommended (that is why we need ```user: root``` in the ```docker-compose.yml```)

## Next steps to improve this repo (if I ever have time)

1. Add support for Solr 8.4 and 8.8.2
2. Use proper user (not root one)
3. Pass solr port as parameter
