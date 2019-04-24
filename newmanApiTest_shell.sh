#!/bin/sh -l
source /etc/profile
cnpm install
echo 正在进行接口自动化........
newman run phonecheck.json -r html
echo 报告已经生成，正在打包......
tar -zcvf ${BUILD_NUMBER}_${JOB_NAME}_report.tar.gz ./newman