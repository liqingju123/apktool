# apktool
android apk 反编译 一次性生成 *.jar xml文件

本人比较懒。每次反编译都比较费劲
添加 apktook/ 添加到 PATH中
chmod -R 755 可执行文件
vim ~/.bash_profile
添加
PATH="/Users/imac/apktool:${PATH}"
export PATH
执行 source  ~/.bash_profile

执行完之后  在任意目录 输入

apktool.sh  doctor_platform.apk 

该文件夹下会生成两个文件夹 一个 dex2jar_app 该目录存储反编译后的 *.Jar
out_xml 生成反编译以后的XML 文件





