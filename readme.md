# Get started

## Prerequisites

### Create SSL certificate and local CA

For detailed steps - check for exampel this file ```./SolrVersions/8.1.1/certificates/readme.md```
Once the certificate is created (named and have appropriate certificate password - as it described in the mentioned above readme.md), it will be mapped when creating container to the folder inside container.

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

## To reset any persisted collections

If you would like to remove any existing collection, run following:

```docker compose down -v```

## What is solr-8.1.1-overrides?

This folder contain some files that we need to override in order to configure SSL and make sure we can persist collections:

1. Solr.in.cmd with configured SSL properties
2. Have a separate folder for running SolrCloud Node with Zookeeper port set explicitly to 2181.
3. The whole Solr Node folder is stored into Docker Volume to make it persist when container is stopped or removed.

**Note**: Solr process is run as Linux root user which is not recommended (that is why we need ```user: root``` in the ```docker-compose.yml```)

## Next steps to improve this repo (if I ever have time)

1. Add support for Solr 8.4 and 8.8.2
2. Use proper user (not root one)
3. Pass solr port as parameter
