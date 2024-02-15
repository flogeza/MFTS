@echo off

:Loop

IF [%1]==[] GOTO Continue
    echo Elozo %~n1 png-k torlese:
	del "D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1_8bpp.png"
	echo Torles kesz.
	echo File beolvasva: %1
	echo Vasarlasi nezet rendereles...
	D:\MagicaVoxel\MagicaVoxelmappak\renderobject.exe -output D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1 -palette D:\MagicaVoxel\MagicaVoxelmappak\files\ttd_palette.json -m D:\MagicaVoxel\MagicaVoxelmappak\files\m_256_40_buy.json -8 -scale 1 "%~1"
	echo Kesz! %~n1  
	echo ____________________________________________
SHIFT
GOTO Loop
:Continue
echo Bezarashoz nyomj 1 gombot.
pause>nul
