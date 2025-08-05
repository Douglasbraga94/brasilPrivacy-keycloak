#!/bin/bash
set -e

# Inicia o Keycloak em modo produção e importa o realm se existir, com logs detalhados
exec /opt/keycloak/bin/kc.sh start --import-realm --verbose
