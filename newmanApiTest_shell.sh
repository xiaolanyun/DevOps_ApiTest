#!/bin/sh -l
cnpm install
echo 正在进行接口自动化........
newman run phonecheck.json –reporterscli,html,json,junit --reporter-json-export poptestjsonOut.json --reporter-junit-export poptestxmlOut.xml --reporter-html-export poptesthtmlOut.html
echo 报告已经生成，请查看日志！