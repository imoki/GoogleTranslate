# GoogleTranslate
一键恢复谷歌翻译

# host文件修改代码参考
https://blog.csdn.net/qq_28833545/article/details/115007162

# 原理
通过修改hosts文件,将可使用的谷歌翻译服务器ip解析到谷歌翻译，从而恢复谷歌翻译。

# 使用
<a href='https://github.com/imoki/GoogleTranslate/releases/download/v1.0.0/GoogleTranslate.bat'>点击此处下载“一键恢复谷歌翻译”脚本</a>，双击运行此脚本即可恢复谷歌翻译  

# hosts文件默认位置
* Windows：C:\Windows\System32\drivers\etc\hosts
* Mac/Linux：/etc/hosts
* Android：/system/etc/hosts

# 清除DNS缓存
* Windows 命令行执行：ipconfig /flushdns
* macOS 执行命令：sudo killall -HUP mDNSResponder
* Chrome 浏览器地址栏访问：chrome://net-internals/#dns，点击「Clear host cache」按钮
 
# 目前可用
```
220.181.174.162 translate.googleapis.com
113.108.239.162 translate.google.com
```

# 可用ip查询
若ip无法访问，可通过如下方式替换ip。通过这个多地ping工具，查询最快速度的ip  
https://ping.chinaz.com/translate.google.cn  
然后进入hosts文件中替换成  
（windows下hosts默认目录为：C:\Windows\System32\drivers\etc\hosts）
```
(上述查到的ip) translate.google.com
```
如：
```
180.163.151.162 translate.google.com
```
