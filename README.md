# OpenConnect for Domain

A fork from https://github.com/dlenski/openconnect. No major change, simply updated the Dockerfile and Docker-compose file.
This only works for linux.

# Quick start

## prepare your credentials

1. Update your credential file `credential.txt`
   ```
      protocol: gp
      host: globalprotect.domain.com.au
      username: <name>
      password: <password>
      ```

## method1: use pre-compiled docker image by Cheney
execute:

`docker-compose up -d`

## method2: build container from local
1. Under the root of the source code:
    
     `docker build -t openconnect:latest .`
2. Edit the `docker-compose.yml` file, update the `image: cheneyyan/openconnect` to `image openconnect`
3. Execute
   `docker-compose up -d`

# Check execution output

Simply: `docker-compose up` and check the stdout.
