#!/bin/bash
filepath=$(cd "$(dirname "$0")"; pwd)
d2j-jar2dex.sh  dex2jar_app/*.jar  #转化成dex

rm -rf  out_xml/smali
mv  *.dex   smali.dex  
d2j-dex2smali.sh  *.dex

mv   smali-out out_xml/smali
mv   *.dex      out_xml/classes.dex

java -jar  $filepath/apktool_2.1.1.jar b  out_xml
 
jarsigner -verbose -keystore  $filepath/*.jks  -signedjar  sugin_out_apk.apk out_xml/dist/*.apk  ljhy
