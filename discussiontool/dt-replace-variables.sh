#!/bin/bash

# Make sure current working directory is scripts location
cd /usr/share/nginx/html/scripts

# Replace configurations as needed
sed -i "s#OIDC_AUTHORIZATION_URL#${LAYERS_API_URI}o/oauth2/authorize#g" scripts.*.js
sed -i "s#OIDC_CLIENT_ID#{DISCUSSIONTOOL_OIDC_CLIENT_ID}#g" scripts.*.js
sed -i "s#SSS_REST_URL#${LAYERS_API_URI}sss.adapter.rest.v2/#g" scripts.*.js
sed -i "s#LD_REST_URL#${LAYERS_API_URI}lds/#g" scripts.*.js
sed -i "s#LD_CLIENT_URL#${LAYERS_API_URI}ldc/#g" scripts.*.js
sed -i "s#BNP_URL#${LAYERS_API_URI}bitsandpieces/#g" scripts.*.js

