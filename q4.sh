#!/bin/bash

cd /var/log/

 find . -type f -mtime +7 -exec rm -f {} \;