#!/bin/bash
# @Author: Alan Huang
# @Date:   2020-12-26 09:56:57
# @Last Modified by:   Alan Huang
# @Last Modified time: 2020-12-26 11:06:31
# @E-mail: cmrhyq@163.com
# @Description: 构架xxl-job docker镜像

path=${1}
prefix=${2}
dic=(
    [1]='100' 
    [2]='200'
    [3]='300'
    )

for names in $(echo ${!dic[*]}); do
    mkdir ${path}/${prefix}-${names} && cd ${path}/${prefix}-${names} && mkdir in out err
done