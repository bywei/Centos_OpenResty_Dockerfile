FROM centos:7.6.1810
MAINTAINER "bywei.cn"
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
RUN yum install -y openresty
ADD nginx.conf /usr/local/openresty/nginx/conf/
ENTRYPOINT /usr/local/openresty/nginx/sbin/nginx && \
    touch /tmp/manual.log && \
    tail -f /tmp/manual.log
