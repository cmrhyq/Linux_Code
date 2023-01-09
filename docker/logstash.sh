#!/bin/bash
# @Author: Alan Huang
# @Date:   2020-12-26 09:56:57
# @Last Modified by:   Alan Huang
# @Last Modified time: 2020-12-26 11:06:31
# @E-mail: cmrhyq@163.com
# @Description: create logstash

docker run -dit --name=logstash \
  --restart=always --privileged=true\
  -e ES_JAVA_OPTS="-Xms512m -Xmx512m" \
  -p 5044:5044 \
  logstash:8.2.2

