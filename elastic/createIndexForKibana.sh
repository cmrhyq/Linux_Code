#!/bin/bash

# Author: AlanHuang
# Description:此脚本用于每个月自动更新kibana索引
#   操作类型分为add和delete
#   每月1号凌晨3点执行
#   所有elasticsearch中的索引写入type_log.txt文件中，
#   然后顺序取出并创建kibana索引。如果新增索引，
#   可直接写入type_log.txt并执行脚本即可。
#   对已经存在的索引不会存在影响。

# add or del
action=add
logst_url='/mnt/remote/data/elastic/logstash_02/script'

URL="http://localhost:5601"
# 每当有新的,从type_log.txt文件中读取所有索引的type
# index_pattern = ""
# ID=index_pattern
domain_name_file=${logst_url}/type_log.txt

time_field='@timestamp'
#date=`date +%Y-%m`
date=2022-06

# 更新日志
log_file=${logst_url}/update_index.log
echo "${date}" >> ${log_file}

