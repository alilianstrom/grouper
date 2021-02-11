#!/bin/bash
docker run -d  --name shibboleth-sp --restart always \
  -v /opt/shib/etc/attribute-map.xml/:/etc/shibboleth/attribute-map.xml \
  -v /opt/shib/etc/pingdev.fnal.gov-metadata.xml:/etc/shibboleth/pingdev.fnal.gov-metadata.xml \
  -v /opt/shib/etc/shibboleth2.xml:/etc/shibboleth/shibboleth2.xml \
  -v /opt/shib/etc/sp-encrypt-cert.pem:/etc/shibboleth/sp-encrypt-cert.pem \
  -v /opt/shib/etc/sp-encrypt-key.pem:/etc/shibboleth/sp-encrypt-key.pem \
  -v /opt/shib/etc/sp-signing-cert.pem:/etc/shibboleth/sp-signing-cert.pem \
  -v /opt/shib/etc/sp-signing-key.pem:/etc/shibboleth/sp-signing-key.pem \
  -v /opt/ssl/grptst1.key:/etc/pki/tls/private/localhost.key \
  -v /opt/ssl/grptst1.cer:/etc/pki/tls/certs/localhost.crt \
  -v /opt/shib/apache/shib.conf:/etc/httpd/conf.d/shib.conf \
  -v /opt/shib/apache/zajp.conf:/etc/httpd/conf.d/zajp.conf \
  -p 80:80 \
  -p 443:443 \
  tier/shibboleth_sp
