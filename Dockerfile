# CentOS 7 com Nexus 3M1

FROM andrefernandes/docker-java7:latest

MAINTAINER Andre Fernandes

WORKDIR /opt

RUN wget http://www.sonatype.org/downloads/nexus-3.0.0-m1-bundle.tar.gz -q -O nexus-3.tar.gz && \
    tar -xzf nexus-3.tar.gz && \
    rm nexus-3.tar.gz && \
    mv nexus-3* nexus

RUN yum install sudo supervisor -y && \
    yum clean all

RUN useradd -r nexus && \
    chown -R nexus:nexus nexus && \
    chown -R nexus:nexus sonatype-work

ADD nexus.conf /etc/supervisord.d/nexus.ini
ADD nexus_supervisor /opt/supervisor/nexus_supervisor

RUN chmod u+x /opt/supervisor/nexus_supervisor && \
    chown nexus:nexus /opt/supervisor/nexus_supervisor

EXPOSE 8081

VOLUME  ["/opt/sonatype-work", "/opt/nexus/conf"]

# Start Supervisor
CMD ["/usr/bin/supervisord"]

