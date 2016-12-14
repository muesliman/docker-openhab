# Openhab 1.8.3
# * configuration is injected
#
FROM tdeckers/docker-openhab
MAINTAINER muesliman

ADD http://search.maven.org/remotecontent?filepath=org/python/jython-installer/2.7.0/jython-installer-2.7.0.jar /tmp/jython-installer-2.7.0.jar
RUN java -jar /tmp/jython-installer-2.7.0.jar -d /opt/jython-2.7 -s -t all
ENV PATH /opt/jython-2.7/bin:$PATH
# bootstrap jython JAR cache
RUN jython 
RUN rm -rf /tmp/jython-installer-2.7.0.jar

RUN mkdir /opt/openhab/lib \
 && ln -s /opt/jython-2.7/jython.jar /opt/openhab/lib/jython.jar

COPY files/openhab.sh /usr/local/bin/openhab.sh

CMD ["/usr/local/bin/boot.sh"]
