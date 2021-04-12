@echo off
@title 文件夹链接v0.1
@color 5a
echo 不存在的文件夹也可自行输入（如D:\abc）
echo 请拖入需要链接的空文件夹（非空文件夹的文件会被移到原始文件夹！）
set /p a=
echo 请拖入原始文件夹
set /p b=
@md %b%\只是个备份
@xcopy %a% %b% /H /E /Y
@rd /s /q %a%
mklink /j "%a%" "%b%" >nul
echo ~~~~~~~~~~~~~~~~~~~
echo 命令已执行！以将文件夹%b%
echo 链接到文件夹%a%，结果请自行确认（不会写判断结果代码555~~）
echo ~~~~~~~~~~~~~~~~~~~
echo 按任意键关闭！
pause>nul