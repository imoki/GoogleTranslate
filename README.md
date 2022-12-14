# GoogleTranslate
一键恢复谷歌翻译

## host文件修改代码参考
https://blog.csdn.net/qq_28833545/article/details/115007162

## 原理
通过修改hosts文件,将可使用的谷歌翻译服务器ip解析到谷歌翻译，从而恢复谷歌翻译。

## 使用
<a href='https://github.com/imoki/GoogleTranslate/releases/download/v1.0.0/GoogleTranslate.bat'>点击此处下载“一键恢复谷歌翻译”脚本</a>，双击运行此脚本即可恢复谷歌翻译  

## hosts文件默认位置
* Windows  
C:\Windows\System32\drivers\etc\hosts
* Mac/Linux  
/etc/hosts
* Android  
/system/etc/hosts
* ios   
/etc/hosts

## 清除DNS缓存
* Windows 命令行执行  
ipconfig /flushdns
* macOS 执行命令  
sudo killall -HUP mDNSResponder
* Chrome 浏览器  
地址栏访问：chrome://net-internals/#dns，点击「Clear host cache」按钮
 
## 目前可用
```
220.181.174.162 translate.googleapis.com
113.108.239.162 translate.google.com
```

## 可用ip查询
若ip无法访问，可通过如下方式替换ip。  
1. 通过这个多地ping工具，查询最快速度的ip  
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

2. 通过ping或nslookup命令  
命令行窗口输入下述任意一个命令，得到所需ip地址
```
ping translate.googleapis.com
```
或
```
nslookup translate.googleapis.com
```
或
```
nslookup translate.google.com
```

## 其它可替代翻译
* 微软翻译  
https://cn.bing.com/translator/?h_text=msn_ctxt&setlang=zh-cn  
* 有道翻译  
https://fanyi.youdao.com  
* 百度翻译  
https://fanyi.baidu.com  
* 腾讯翻译  
https://transmart.qq.com/zh-CN/index  
* 腾讯翻译君  
https://fanyi.qq.com  
* 金山词霸  
https://www.iciba.com  
* deepl  
https://www.deepl.com/translator  
* 讯飞翻译  
https://fanyi.xfyun.cn/console/trans/text  
* 阿里翻译  
https://translate.alibaba.com/  

