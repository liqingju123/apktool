 #!/bin/sh

rm -r out_xml
mkdir dex2jar_app
filepath=$(cd "$(dirname "$0")"; pwd)


echo "正在反编译"
java -jar  $filepath/apktool_2.1.1.jar d  $1   -o out_xml
echo  "反编译完成XML"
cp $1  dex2jar
unzip -o -d dex2jar_app  $1
dex2jar.sh  dex2jar_app/*.dex

rm -rf dex2jar_app/*
mv classes*-dex2jar.jar  dex2jar_app/
echo "生成JAR成功"
filepath=$(cd "$(dirname "$0")"; pwd)




