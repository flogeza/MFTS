@echo off

:Loop

IF [%1]==[] GOTO Continue
    echo Elozo %~n1 png-k torlese:
	del "D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1_8bpp.png"
	del "D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1_1x_8bpp.png"
	del "D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1_2x_8bpp.png"
	del "D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1_4x_8bpp.png"
	echo Torles kesz.
	echo File beolvasva: %1
	echo Rendereles...
	D:\MagicaVoxel\MagicaVoxelmappak\renderobject.exe -output D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1 -palette D:\MagicaVoxel\MagicaVoxelmappak\files\ttd_palette.json -m D:\MagicaVoxel\MagicaVoxelmappak\files\m_256_40_florida.json -8 -scale 1,2,4 "%~1"
	D:\MagicaVoxel\MagicaVoxelmappak\renderobject.exe -output D:\MagicaVoxel\MagicaVoxelmappak\vox\00\%~n1 -palette D:\MagicaVoxel\MagicaVoxelmappak\files\ttd_palette.json -m D:\MagicaVoxel\MagicaVoxelmappak\files\m_256_40_info.json -8 -scale 1 "%~1"
	echo Kesz! %~n1  
	echo ____________________________________________
SHIFT
GOTO Loop
:Continue
echo Bezarashoz nyomj 1 gombot.
pause>nul
