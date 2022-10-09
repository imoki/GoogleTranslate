@echo off
PUSHD %~DP0 & cd /d "%~dp0"
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof

:runas
CHCP 65001
@ECHO hosts默认目录为：
SET hosts=C:\Windows\System32\drivers\etc\hosts

if exist %hosts% goto hosts
goto nofile

:hosts
@xcopy %hosts% %hosts%_bak\ /d /c /i /y
@ECHO hosts文件已备份，备份目录为%hosts%_bak
@ECHO 220.181.174.162 translate.googleapis.com >>%hosts%
@ECHO 113.108.239.162 translate.google.com >>%hosts%
@ECHO 刷新DNS解析缓存
ipconfig /flushdns
ECHO hosts文件已修改，请按任意键退出
@pause > nul
@exit

:nofile
set /p a= 请输入hosts地址（例如：C:\Windows\System32\drivers\etc）:
@xcopy %a%\hosts %a%\hosts_bak\ /d /c /i /y
@ECHO HOSTS文件已备份，hosts文件已备份，备份目录为%a%\hosts_bak
@ECHO 220.181.174.162 translate.googleapis.com >>%a%\hosts
@ECHO 113.108.239.162 translate.google.com >>%a%\hosts
@ECHO 刷新DNS解析缓存
ipconfig /flushdns
ECHO hosts文件已修改，请按任意键退出
@pause > nul
@exit
