#!/bin/bash
# @Author: Alan Huang
# @Date:   2020-12-26 09:56:57
# @Last Modified by:   Alan Huang
# @Last Modified time: 2020-12-26 11:06:31
# @E-mail: cmrhyq@163.com
# @Description: 使用GScan插件扫描主机，生成安全扫描报告并发送到指定邮箱
#搭配GScan使用

mail='cmrhyq@163.com'
src='/opt/GScan'
#git clone https://github.com/grayddq/GScan.git
python ${src}/GScan.py --sug --pro

echo "Host Security Scan Log" | mail -s 'Host Security Scan Log' ${mail} < ${src}/log/gscan.log -a ${src}/log/log.log
