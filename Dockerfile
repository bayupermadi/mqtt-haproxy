FROM haproxy:latest
LABEL maintainer="Bayu Permadi (irwanhikmah@gmail.com)"

# Add configuration
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
