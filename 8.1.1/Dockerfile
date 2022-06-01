FROM openjdk:11-jre
RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

# The Solr archive can be copied from local machine to speed up build process
#COPY solr-8.1.1.tgz .
#RUN tar -xvf solr-8.1.1.tgz \
#    && rm solr-8.1.1.tgz

# Comment out the command below if you decided to use a copy from local machine
RUN wget https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz \
    && tar -xvf solr-8.1.1.tgz \
    && rm solr-8.1.1.tgz

COPY solrCloudStart.sh .

COPY solr-8.1.1-overrides/ solr-8.1.1/

RUN chmod +x solrCloudStart.sh

EXPOSE 9993/tcp

ENTRYPOINT [ "/solrCloudStart.sh" ]