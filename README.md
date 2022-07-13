# shell script learning

[toc]

## 一、说明

| 序号  | 目录名    | 说明                | 备注  |
|-----|--------|-------------------|-----|
| 1   | system | 系统类脚本             |     |
| 2   | elstic | elasticsearch相关脚本 |     |
| 3   | docker | docker相关脚本        |     |

## 二、system

### scan.sh

- 代码内容

```shell
#!/bin/sh
#Author：Alan Huang
#Description: 使用GScan插件扫描主机，生成安全扫描报告并发送到指定邮箱
#搭配GScan插件使用

mail='***@**.com'
src='/opt/GScan'
#git clone https://github.com/grayddq/GScan.git
python ${src}/GScan.py --sug --pro

echo "Host Security Scan Log" | mail -s 'Host Security Scan Log' ${mail} < ${src}/log/gscan.log -a ${src}/log/log.log
```

### scanPort.sh
```shell
#!/bin/sh
# Author：Alan Huang
# Description:  扫描主机端口状态
DATE=(date +"%a %b %e %H:%M") #星期月天时分  %e单数字时显示7，而%d显示07

ABNORMAL_IP=(lastb |grep "DATE" |awk '{a[3]++}END{for(i in a)if(a[i]>10)print i}')

for IP in ABNORMAL_IP; do
    if [(iptables -vnL |grep -c "IP") -eq 0 ]; then
        iptables -I INPUT -sIP -j DROP    
    fi
done
```

### shieldIP.sh
```shell
#!/bin/bash
# Author: AlanHuang
# Description: 屏蔽攻击ip

DATE=$(date + %d/%b/%Y:%H:%M)
LOG_FILE=/usr/local/nginx/logs/shield_ip.log
ABNORMAL_IP=$(tail -n5000 SLOG_FILE | grep $DATE | awk '{a[$1]++}END{for(i in a) if(a[i]>10)print i}')

for IP in $ABNORMAL_IP; do
    if [ $(iptables -vnL | grep -c "$IP") -eq 0 ]; then
        iptables -I INPUT -s $IP -j DROP
        echo "$(date + '%F_%T') $IP" >> /tmp/drop_ip.log
    fi
done
```