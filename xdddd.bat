@echo off
cls
set deko=.....
:Hasiera
cls
echo 1. %deko% Hasiera %deko%
echo 2. %deko% mahaigainean direktorio bat sortu %deko%
echo 3. %deko% Erakutsi helbide konkretu baten karpeta guztiak %deko%
echo 4. %deko% Gehitu bi zenbaki %deko%
echo 5. %deko% fitxategi bat dagoen konprobatu %deko%
echo 6. %deko% amaiera %deko%
echo 7. %deko% sekretua %deko%
echo ongi etorri ibairen menura...
echo mezedez 1etik 6era zenbakiak sartu zati horretara jotzeko.
pause > nul
set /p Auker= zenbaki bat sartu mezedez... beste ataleretara jotzeko.
if %Auker%=="1" (
goto Hasiera
) else if %Auker%==2 (
goto mahaigaina
) else if %Auker%==3 (
goto Karpeta
) else if %Auker%==4 (
goto gehiketa
) else if %Auker%==5 (
goto konprobaketa
) else if %Auker%==6 (
goto amaiera
) else if %Auker%==7 (
goto sekretua
) else (
echo zenbaki bat sartzea ezan dizut...
pause> nul
goto Hasiera
)

:mahaigaina
cls
echo kaixo, atal honen bitartez, mahaigainean direktorio bat sortuko dugu...
set /p izenaa= mezedez, zure izena zartu
set /p baiespen= zure baiespena eman behar didazu direktorio bat zortzeko zure mahaigainean, "bai" ala "ez" ezanez
if %baiespen%==bai (
md C:\Users\"NUEVO USUARIO"\Desktop\%izenaa%
echo mahaigainean direktorio bat sortu da
pause > nul
goto Hasiera
) else if %baiespen%==ez (
echo ok menura bueltatuko gara
pause > nul
goto Hasiera
) else (
echo bai ala ez jartzea jarri dezut
pause > nul
goto mahaigaina
)

:Karpeta
cls
echo atal honen bitartez, direktorio baten karpetak ikusi ahalko duzu, artxibo baten bidez izango da.
pause > nul
echo OSASUNA > C:\Users\"NUEVO USUARIO"\Desktop\%izenaa%\%izenaa%.txt
tree C:\Users\"NUEVO USUARIO"\Desktop > C:\Users\"NUEVO USUARIO"\Desktop\%izenaa%\%izenaa%.txt
start "" C:\Users\"NUEVO USUARIO"\Desktop\%izenaa%\%izenaa%.txt
goto Hasiera1
:Hasiera1
cls
echo 1. Hasiera
echo 2. %deko% mahaigainean direktorio bat sortu %deko%
echo 3. %deko% Erakutsi helbide konkretu baten karpeta guztiak %deko%
echo 4. %deko% Gehitu bi zenbaki %deko%
echo 5. %deko% fitxategi bat dagoen konprobatu %deko%
echo 6. %deko% amaiera %deko%
echo ongi etorri  berriro, ibairen menura...
pause > nul
set /p Aukera1= ze nahi dezu egin orain...
if "%Aukera1%"=="1" (
goto Hasiera1
) else if %Aukera1%==2 (
goto mahaigaina
) else if %Aukera1%==3 (
goto Karpeta
) else if %Aukera1%==4 (
goto gehiketa
) else if %Aukera1%==5 (
goto konprobaketa
) else if %Aukera1%==6 (
goto amaiera
) else (
echo zenbaki bat sartzea esan dizut...
pause > nul
goto Hasiera1
)

:gehiketa
echo kalkulagailu bat egingo dugu
pause > nul
set /p kalku= %izenaa%,  zenbaki bat mezedez
set /p kalku1= %izenaa%, sartu beste zenbaki bat mezedez
echo orain gehiketa bat egingo dugu eta artxibo batean agertuko da.
pause > nul
set /a batutu= %kalku% + %kalku1%
echo %batutu% > C:\Users\"NUEVO USUARIO"\Desktop\%izenaa%\kalkulu.txt
pause > nul
start "" C:\Users\"NUEVO USUARIO"\Desktop\%izenaa%\kalkulu.txt
pause > nul
set /p hasi= hasierara joan nahi dezu,... bai ala ez sartu
if %hasi%==bai (
goto Hasiera1
) else if %hasi%==ez (
goto gehiketa
) else (
echo bai ala ez sartu esan dezut...
goto gehiketa
)

:konprobaketa

echo artxibo bat dagoen ala ez ikusiko dugu...
pause > nul
set /p artixbi= nahi dezun artxiboa bilatuko dugu
if exist %artixbi% (
 start  %artixbi%
 cls
 goto Hasiera1
) else (
echo artxibo bat bere extentsiorekin sartu..
pause > nul
goto konprobaketa
)

:sekretua

start https://www.youtube.com/watch?v=dQw4w9WgXcQ
goto Hasiera

:amaiera

echo agur agur
pause > nul
exit
