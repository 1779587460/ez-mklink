@echo off
@title �ļ�������
@color 5a
echo ��Ŀ:https://github.com/1779587460/ez-mklink
echo ԭ��:��mklinkʹa�ļ�����b�ļ����е�����ͬ��������a�ļ��е������ļ�ʵ�ʶ���b�ļ���
echo �����ڵ��ļ���Ҳ���������루��D:\abc��
echo �����뱾Ӧ���ڵ�a�ļ��У��ǿ��ļ��е��ļ��ᱻ�Ƶ�ԭʼ�ļ��У���
set /p a=
echo �����븺�ص�b�ļ���
set /p b=
@xcopy %a% %b% /H /E /Y
@rd /s /q %a%
mklink /j /d %a% %b% >nul
echo ~~~~~~~~~~~~~~~~~~~
echo ������ִ�У��Խ��ļ���%b%
echo ���ӵ��ļ���%a%�����������ȷ�ϣ�����д�жϽ������555~~��
echo ~~~~~~~~~~~~~~~~~~~
echo ��������رգ�
pause>nul