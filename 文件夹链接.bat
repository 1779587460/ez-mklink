@echo off
@title 文件夹链接
@color 5a
echo 项目:https://github.com/1779587460/ez-mklink
echo 原理:用mklink使a文件夹与b文件夹中的内容同步，放入a文件夹的所有文件实际都在b文件夹
echo 不存在的文件夹也可自行输入（如D:\abc）
echo 请拖入本应存在的a文件夹（非空文件夹的文件会被移到原始文件夹！）
set /p a=
echo 请拖入负载的b文件夹
set /p b=
@xcopy %a% %b% /H /E /Y
@rd /s /q %a%
mklink /j /d %a% %b% >nul
echo ~~~~~~~~~~~~~~~~~~~
echo 命令已执行！以将文件夹%b%
echo 链接到文件夹%a%，结果请自行确认（不会写判断结果代码555~~）
echo ~~~~~~~~~~~~~~~~~~~
echo 按任意键关闭！
pause>nul