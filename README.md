# Dockerfile for Ember

Simple docker for Ember setup using Alpine

## Build locally

```
# Build it
> docker build -t mrcsparker/ember .

# Run it
> docker run -itP mrcsparker/ember

# Find your IP
> docker-machine ip
192.168.99.100

# Find the port
> docker ps
171945bbac50        mrcsparker/ember    "nginx -g 'daemon off"   4 seconds ago       Up 3 seconds        0.0.0.0:32775->80/tcp, 0.0.0.0:32774->443/tcp   sad_yonath

# Connect
> open http://192.168.99.100:32775

```
