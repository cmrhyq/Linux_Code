# shell script learning
[toc]

## 一、说明

| 序号 | 目录名 | 说明       | 备注 |
| ---- | ------ | ---------- | ---- |
| 1    | system | 系统类脚本 |      |
|      |        |            |      |





## 二、system

### scan.sh

- 代码内容

```shell
#! /bin/sh
#Author：Alan Huang
#Description:  使用GScan插件扫描主机，生成安全扫描报告并发送到指定邮箱

mail='cmrhyq@163.com'
src='/opt/GScan'
#git clone https://github.com/grayddq/GScan.git
python ${src}/GScan.py --sug --pro

echo "Host Security Scan Log" | mail -s 'Host Security Scan Log' ${mail} < ${src}/log/gscan.log -a ${src}/log/log.log
```

