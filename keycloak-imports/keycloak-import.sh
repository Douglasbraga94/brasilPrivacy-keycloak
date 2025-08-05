#!/bin/bash
set -e

# Debug: imprime variáveis de ambiente
echo "KC_HOSTNAME=$KC_HOSTNAME"
echo "KC_HOSTNAME_STRICT=$KC_HOSTNAME_STRICT"
echo "KC_HOSTNAME_URL=$KC_HOSTNAME_URL"

# Inicia o Keycloak em modo produção, passando o hostname explicitamente
exec /opt/keycloak/bin/kc.sh start --import-realm --hostname=$KC_HOSTNAME --verbose
