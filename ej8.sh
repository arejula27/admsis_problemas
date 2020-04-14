#!/bin/bash
cat /etc/passwd |grep bash | cut -d ':' -f 1
