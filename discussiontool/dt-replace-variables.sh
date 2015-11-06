#!/bin/bash

# Make sure current working directory is scripts location
cd /usr/share/nginx/html/scripts

# Replace configurations as needed
sed -i "s#OIDC_AUTHORIZATION_URL#${BASE_URL}/o/oauth2/authorize#g" scripts.*.js
sed -i "s#OIDC_CLIENT_ID#NOT_IMPLEMENTED_YET#g" scripts.*.js
sed -i "s#SSS_REST_URL#${BASE_URL}/sss#g" scripts.*.js
sed -i "s#LD_REST_URL#${BASE_URL}/ldserver#g" scripts.*.js
sed -i "s#LD_CLIENT_URL#${BASE_URL}/ldclient#g" scripts.*.js
sed -i "s#BNP_URL#${BASE_URL}/bitsandpieces#g" scripts.*.js

