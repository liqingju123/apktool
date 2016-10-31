#!/bin/bash
num=$(echo "obase=16;$1"|bc) #16进制转化成10进制
public_path=`find . -type f -name public.xml 2>/dev/null` #在当前反编译下的目录获取资源文件
public_type=`grep -i $num  $public_path`
res_id=$(echo $public_type | sed 's/\<public type="\(.*\)" name="\(.*\)" id="\(.*\)" \/>/\2/g') #获取资源对应的ID 名称

res_name=$(echo $public_type | sed 's/\<public type="\(.*\)" name="\(.*\)" id="\(.*\)" \/>/\1/g') #获取XML 文件名称类型
if [ 'layout' ==  $res_name ]; then  
     echo '资源文件为layout=  '$res_id.xml
	 exit 1;   
fi
res_name_value=s.xml #为拼接xml资源文件库
res_path=`find . -type f -name  $res_name$res_name_value  2>/dev/null` #搜索指定的资源文件中的值
res_id_value=`grep -i $res_id  $res_path`
echo $res_id_value  #输出该ID 下的资源
