echo msgbox "CONHEวA TAMBษM NOSSO MELHOR ARQUIVO BAT NO CANAL",vbinformation,"AVISO" >%temp%\mensagem1.vbs
start %temp%\mensagem1.vbs
ECHO OFF
ECHO 
TITLE          FERRAMENTA DE REDE
:IN

mode 34,18
@ECHO OFF
mode 34,14
COLOR A1
echo    อออออออออออออออออออออออออออออ
ECHO         FERRAMENTA DE REDE
echo.                              
echo  1 - USAR PING
echo  2 - RASTREIAR SUA ROTA
echo  3 - VEJA QUEM ESTA NA SUA REDE
echo  4 - VEJA SUAS CONEXOES DO SEU PC
echo  5 - ATACAR USANDO PING DA MORTE
echo  6 - LOCALIZAR IP
ECHO.
echo        อออออออออออออออออออออออ
echo.
set /p opcao=NUMERO: 
if %opcao% equ 1 goto 1
if %opcao% equ 2 goto 2
if %opcao% equ 3 goto 3
if %opcao% equ 4 goto 4
if %opcao% equ 5 goto 5
if %opcao% equ 6 goto 6
GOTO IN

:1

COLOR B0
mode 70,20
ECHO.
set /p o=SITE: 
ping %o%
PAUSE

:11
CLS
MODE 29,8
ECHO.
ECHO  อออออออออออออออออออออออ
echo  1- VOLTAR AO MENU
ECHO  2- USAR PING NOVAMENTE
echo  อออออออออออออออออออออออ
echo.
set /p opcao= NUMERO: 
if %opcao% equ 1 goto IN
if %opcao% equ 2 goto 1
GOTO 11


:2
COLOR F0
mode 65,35
ECHO.
ECHO              RASTREAR A ROTA DE UM SITE (TRACERT)
ECHO.
set /p q=  ENDERECO: 
tracert -d %q%
pause

:12
CLS
MODE 29,8
ECHO.
ECHO  อออออออออออออออออออออออ
echo  1- VOLTAR AO MENU
ECHO  2- RASTREAR NOVAMENTE
echo  อออออออออออออออออออออออ
echo.
set /p opcao= NUMERO: 
if %opcao% equ 1 goto IN
if %opcao% equ 2 goto 2
GOTO 12

:3
COLOR 0C
mode 62,35
ECHO.
echo                QUEM ESTA NA MINHA REDE
ECHO.
arp -a
PAUSE
:13
CLS
MODE 29,8
ECHO.
ECHO  อออออออออออออออออออออออ
echo  1- VOLTAR AO MENU
ECHO  2- VERIFICAR NOVAMENTE
ECHO  3- REMOVER USUARIO
ECHO  4- CONTINUAR
echo  อออออออออออออออออออออออ
echo.
set /p opcao= NUMERO: 
if %opcao% equ 1 goto IN
if %opcao% equ 2 goto 3
if %opcao% equ 3 goto RR
if %opcao% equ 4 goto 00
GOTO 13

:00
mode 86,50
CLS
ECHO.
ECHO                               USUARIOS NA SUA REDE
ECHO.
ECHO.
ECHO.
net view
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.

PAUSE
:14
CLS
MODE 29,8
ECHO.
ECHO  อออออออออออออออออออออออ
echo  1- VOLTAR AO MENU
ECHO  2- VERIFICAR NOVAMENTE
ECHO  3- DESLIGAR O PC DO USUARIO
echo  อออออออออออออออออออออออ
echo.
set /p opcao= NUMERO: 
if %opcao% equ 1 goto IN
if %opcao% equ 2 goto 3
if %opcao% equ 3 goto RE
GOTO 14








:RR

MODE 40,20
CLS
ECHO.
ECHO REMOVER USUARIO DA SUA REDE COM ARP
set /p AZ= ENDERECO IP: 
ARP -D %AZ%
PAUSE

:15

CLS
MODE 29,8
ECHO.
ECHO  อออออออออออออออออออออออ
echo  1- VOLTAR AO MENU
ECHO  2- TENTAR REMOVER NOVAMENTE
echo  อออออออออออออออออออออออ
echo.
set /p opcao= NUMERO: 
if %opcao% equ 1 goto IN
if %opcao% equ 2 goto RR
GOTO 15


:RE
CLS
mode 50,10

ECHO.
ECHO DESLIGAR O PC DO USUARIO DA MINHA REDE
set /p VC=  NOME DO USUมRIO: 
ECHO            REMOVER %VC%
ECHO. 
ECHO.
shutdown -s -t 05 -M \\%VC%
pause
:16
CLS
MODE 29,8
ECHO.
ECHO  อออออออออออออออออออออออ
echo  1- VOLTAR AO MENU
ECHO  2- TENTAR NOVAMENTE
echo  อออออออออออออออออออออออ
echo.
set /p opcao= NUMERO: 
if %opcao% equ 1 goto IN
if %opcao% equ 2 goto RE
GOTO 16




:4
CLS
COLOR E9
mode 68,40

ECHO                   อออออออออออออออออออออออ
ECHO                     VERIFICA CONEXOES DO PC
ECHO                   อออออออออออออออออออออออ
NETSTAT
PAUSE
:17
CLS
MODE 29,8
ECHO.
ECHO  อออออออออออออออออออออออ
echo  1- VOLTAR AO MENU
ECHO  2- USAR PING NOVAMENTE
echo  อออออออออออออออออออออออ
echo.
set /p opcao= NUMERO: 
if %opcao% equ 1 goto IN
if %opcao% equ 2 goto 4
GOTO 17





:5
CLS
COLOR A

mode 32,5

ECHO.
echo    อออออออออออออออออออออออ
ECHO  ! USE COM RESPONSABILIDADE  !
echo    อออออออออออออออออออออออ
ECHO.

set /p BB= DIGITE O IP: 
CLS
mode 68,35
PING -l 1000 -t %BB%
goto 5


:6
CLS
COLOR A

mode 32,5

ECHO.
echo    อออออออออออออออออออออออ
ECHO  ! DIGITE IP DA VอTIMA  !
echo    อออออออออออออออออออออออ
ECHO.

set /p BC= DIGITE O IP: 
CLS
START https://myip.ms/info/whois/%BC%
cls




:0
mode 36,17
echo 000000000000000_00000000000000
echo 00000000000000___ 0000000000000
echo 0000000000000_____0000000000000
echo 0000000000000_______00000000000
echo 00000000000_________00000000000
echo ___________ ---------- ___________
echo          *Dr. Tutoris*
echo 000000 _____--------_____ 000000
echo 0000000_________________0000000
echo 000000_________0_________000000
echo 00000_______0000000_______00000
echo 0000_____0000000000000_____0000
echo 000___0000000000000000000___000
echo 00_0000000000000000000000000_00
PAUSE
goto 0