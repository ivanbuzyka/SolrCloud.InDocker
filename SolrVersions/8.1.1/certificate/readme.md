## TL;DR
Place the PKCS12 certificate here.
Name the certificate "localhost.p12" and use password "changeit" (both are hardcoded into bin/solr.in.sh)

## Creating certificate steps (details)

The certificate (as well as the local CA certificate) can be created using [mkcert tool](https://github.com/FiloSottile/mkcert)

1. Install or download mkcert (e.g. by using Chocolatey ```choco install mkcert```)
2. Create a new local CA: ```mkcert -install```
3. Create PKCS12 certificate for localhost domain: ```mkcert -pkcs12 localhost```
4. Copy that certificate to this folder. The certificate will be mounted into the container.
