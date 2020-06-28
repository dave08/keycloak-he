FROM jboss/keycloak:10.0.1

USER root

COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/login/"]
COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/account/"]
COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/admin/"]
COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/email/"]

RUN chown -R jboss:root /opt/jboss/keycloak/themes/base \
    && chmod 775 -R /opt/jboss/keycloak/themes/base

USER jboss
