# OpenConnect for Domain

A fork from https://github.com/dlenski/openconnect. No major change, simply updated the Dockerfile and Docker-compose file.

# Quick start

## prepare your credentials

1. Update your credential file `credential.txt`
   >  protocol: gp
      host: globalprotect.domain.com.au
      username: <name>
      password: <password>

## method1: build container from local
2. Under the root of the source code:
   >  docker build -t openconnect:latest .
      docker-compose up
   >  #if the above script works and logs in, simply
      docker-compose up -d

## method2: use pre-compiled docker image by Cheney
Edit docker-compose.yml, modify `openconnect` to 
