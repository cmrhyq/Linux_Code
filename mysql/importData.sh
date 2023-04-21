#!/bin/bash
# @Author: Alan Huang
# @Date:   2020-12-26 09:56:57
# @Last Modified by:   Alan Huang
# @Last Modified time: 2020-12-26 11:06:31
# @E-mail: cmrhyq@163.com
# @Description: 导出mysql表数据，dic中配置要导出的表，
#               导出命令：./importData.sh mysql用户名 mysql密码

dic=(
    [1]='ApolloConfigDB' 
    [2]='ApolloPortalDB'
    [3]='hfish'
    [4]='nacos_config'
    [5]='store'
    [6]='store_dev'
    [7]='xxl_job'
    )
useranme=${1}

for dbname in ${dic[@]}; do
    echo Export ${dbname} table data
    mysqldump --databases ${dbname} > /var/lib/mysql/${dbname}.sql -u${username} -p
    echo End of exporting ${dbname} table data 
done