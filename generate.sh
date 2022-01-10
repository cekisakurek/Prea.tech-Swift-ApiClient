#!/bin/bash

openapi-generator generate -i specs.yml \
-g swift5 \
--additional-properties responseAs=Combine \
-o .
