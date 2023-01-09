#!/bin/bash
# @Author: Alan Huang
# @Date:   2020-12-26 09:56:57
# @Last Modified by:   Alan Huang
# @Last Modified time: 2020-12-26 11:06:31
# @E-mail: cmrhyq@163.com
# @Description: Copy the configuration file in logstash to the local

id=${1}

sudo docker cp ${id}:/usr/share/logstash/config /mnt/remote/data/elastic/logstash_02
sudo docker cp ${id}:/usr/share/logstash/data /mnt/remote/data/elastic/logstash_02
sudo docker cp ${id}:/usr/share/logstash/modules /mnt/remote/data/elastic/logstash_02
sudo docker cp ${id}:/usr/share/logstash/pipeline /mnt/remote/data/elastic/logstash_02
sudo docker cp ${id}:/usr/share/logstash/tools /mnt/remote/data/elastic/logstash_02
sudo docker cp ${id}:/var/log /mnt/remote/data/elastic/logstash_02/log
