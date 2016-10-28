#!/bin/bash
num=$(echo "obase=16;$1"|bc) #16进制转化成10进制
public_type=`grep -i $num  res/values/public.xml`
res_name=$(echo $public_type | sed 's/\<public type="\(.*\)" name="\(.*\)" id="\(.*\)" \/>/\1/g') #获取XML 文件名称类型
res_id=$(echo $public_type | sed 's/\<public type="\(.*\)" name="\(.*\)" id="\(.*\)" \/>/\2/g') #获取资源对应的ID 名称
res_name_value=s.xml #为拼接xml资源文件库
res_id_value=`grep -i $res_id  res/values/$res_name$res_name_value`
echo $res_id_value  #输出该ID 下的资源
