#!/bin/bash
cat /credential.yaml| grep password: | awk -F':' '{print $NF}'|xargs | /openconnect/openconnect --protocol=gp --protocol=$(cat credential.yaml| grep protocol: | awk -F':' '{print $NF}'|xargs) $(cat credential.yaml| grep host: | awk -F':' '{print $NF}'|xargs) -u $(cat credential.yaml| grep username: | awk -F':' '{print $NF}'|xargs) --passwd-on-stdin
