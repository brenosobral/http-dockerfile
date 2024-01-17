FROM centos:centos7
RUN yum install -y --setopt=tsflags=nodocs httpd.x86_64 && yum clean all -y
COPY httpd.conf /etc/httpd/conf/httpd.conf
EXPOSE 8080
RUN rm -rf /run/httpd && mkdir /run/httpd && chmod -R a+rwx /run/httpd
USER 1001
CMD /usr/sbin/apachectl -DFOREGROUND
