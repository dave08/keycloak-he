FROM jboss/keycloak:10.0.1

COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/login/"]
COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/account/"]
COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/admin/"]
COPY ["theme.properties", "/opt/jboss/keycloak/themes/base/email/"]
