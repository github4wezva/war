FROM jboss/wildfly:latest
ADD /target/war_proj.war /opt/wildfly/jboss/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
