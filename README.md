# Docker image: Kibana 5/6 on CentOS 7
Running Kibana 5 or 6 on CentOS 7/Oracle Java 9

The version tagged 5 runs Kibana 5.x, version 6 or latest refers to Kibana 6.x.

The application runs as non-privileged  user/group kibana/elk.

## Usage:
### Simple usage
```
docker run -d -p 5601 \
    -v /data/kibana/etc/kibana:/etc/kibana \
    registry.ott-consult.de/oc/kibana:latest
```
