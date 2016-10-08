::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: The MIT License (MIT)
:: 
:: Copyright (c) 2016 Valentine Gostev val@le.lc
:: 
:: Permission is hereby granted, free of charge, to any person obtaining a copy
:: of this software and associated documentation files (the "Software"), to deal
:: in the Software without restriction, including without limitation the rights
:: to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
:: copies of the Software, and to permit persons to whom the Software is
:: furnished to do so, subject to the following conditions:
:: 
:: The above copyright notice and this permission notice shall be included in all
:: copies or substantial portions of the Software.
:: 
:: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
:: IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
:: FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
:: AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
:: LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
:: OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
:: SOFTWARE.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
setlocal enabledelayedexpansion

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Arma 3 Mission Skeleton by longbow
:: Version 1.1
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Setting encoding to UTF-8
chcp 65001 >NUL
echo.
echo ===== Arma 3 Mission Skeleton =====
echo Building mission...

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding stringtable.xml
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy header
copy a3skeleton\stringtable_header.xml stringtable.xml >NUL
:: Put localization of mission name, author, loading texts and pictures
type "settings\mission.xml" >> "stringtable.xml"
:: Put localization of Arma 3 Mission Skeleton
type "a3skeleton\stringtable_addon.xml" >> "stringtable.xml"
:: Put localization from script addons
for /r "addons" %%F in (*.xml) do type "%%F" >> stringtable.xml
:: Put localization from mission maker
for /r "i18n" %%F in (*.xml) do type "%%F" >> stringtable.xml
type "a3skeleton\stringtable_footer.xml" >> "stringtable.xml"

echo Stringtable.xml was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgDebriefing class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgdebriefing.hpp >NUL
:: Include debriefings from addons
for /r "addons" %%F in (cfgdebriefing.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgdebriefing.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgdebriefing.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgdebriefing.hpp
	)
:: Include debriefings from mission's author
for /r "resources" %%F in (cfgdebriefing.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgdebriefing.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgdebriefing.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgdebriefing.hpp
	)

echo CfgDebriefing class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgDebriefingSections class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgdebriefingsections.hpp >NUL
:: Include debriefing sections from addons
for /r "addons" %%F in (cfgdebriefingsections.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgdebriefingsections.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgdebriefingsections.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgdebriefingsections.hpp
	)
:: Include debriefing sections from mission's author
for /r "resources" %%F in (cfgdebriefingsections.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgdebriefingsections.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgdebriefingsections.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgdebriefingsections.hpp
	)

echo CfgDebriefingSections class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgIdentities class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgidentities.hpp >NUL
:: Include identities from addons
for /r "addons" %%F in (cfgidentities.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgidentities.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgidentities.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgidentities.hpp
	)
:: Include identities from mission's author
for /r "resources" %%F in (cfgidentities.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgidentities.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgidentities.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgidentities.hpp
	)

echo CfgIdentities class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgMusic class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgmusic.hpp >NUL
:: Include identities from addons
for /r "addons" %%F in (cfgmusic.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgmusic.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgmusic.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgmusic.hpp
	)
:: Include identities from mission's author
for /r "resources" %%F in (cfgmusic.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgmusic.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgmusic.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgmusic.hpp
	)

echo CfgMusic class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgNotifications class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgnotifications.hpp >NUL
:: Include notifications from addons
for /r "addons" %%F in (cfgnotifications.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgnotifications.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgnotifications.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgnotifications.hpp
	)
:: Include notifications from mission's author
for /r "resources" %%F in (cfgnotifications.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgnotifications.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgnotifications.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgnotifications.hpp
	)

echo CfgNotifications class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgRadio class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgradio.hpp >NUL
:: Include radio messages from addons
for /r "addons" %%F in (cfgradio.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgradio.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgradio.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgradio.hpp
	)
:: Include radio messages from mission's author
for /r "resources" %%F in (cfgradio.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgradio.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgradio.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgradio.hpp
	)

echo CfgRadio class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgSounds class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgsounds.hpp >NUL
:: Include sounds from addons
for /r "addons" %%F in (cfgsounds.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgsounds.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgsounds.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgsounds.hpp
	)
:: Include sounds from mission's author
for /r "resources" %%F in (cfgsounds.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgsounds.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgsounds.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgsounds.hpp
	)

echo CfgSounds class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgTaskTypes class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgtasktypes.hpp >NUL
:: Include task types from addons
for /r "addons" %%F in (cfgtasktypes.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgtasktypes.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgtasktypes.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgtasktypes.hpp
	)
:: Include task types from mission's author
for /r "resources" %%F in (cfgtasktypes.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgtasktypes.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgtasktypes.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgtasktypes.hpp
	)

echo CfgTaskTypes class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgUnitInsignia class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_cfgunitinsgnia.hpp >NUL
:: Include insignias from addons
for /r "addons" %%F in (cfgunitinsgnia.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgunitinsgnia.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgunitinsgnia.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgunitinsgnia.hpp
	)
:: Include insignias from mission's author
for /r "resources" %%F in (cfgunitinsgnia.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgunitinsgnia.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgunitinsgnia.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgunitinsgnia.hpp
	)

echo CfgUnitInsignia class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding Params class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Copy version info
copy a3skeleton\version.txt xtra_params.hpp >NUL
:: Include params from addons
for /r "addons" %%F in (cfgparams.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_params.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_params.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_params.hpp
	)
:: Include params from mission's author
for /r "resources" %%F in (cfgparams.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_params.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_params.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_params.hpp
	)

echo Params class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding RscTitles class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

copy a3skeleton\version.txt xtra_rsctitles.hpp  >NUL
:: Include RscTitles from addons
for /r "addons" %%F in (cfgrsctitles.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_rsctitles.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_rsctitles.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_rsctitles.hpp
	)
:: Include RscTitles from mission's author
for /r "resources" %%F in (cfgrsctitles.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_rsctitles.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_rsctitles.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_rsctitles.hpp
	)

echo RscTitles class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgRemoteExec:Functions class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

copy a3skeleton\version.txt xtra_cfgremoteexecfunc.hpp >NUL
:: Copy CfgRemoteExec:Functions from addons
for /r "addons" %%F in (cfgremoteexecfunc.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgremoteexecfunc.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgremoteexecfunc.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgremoteexecfunc.hpp
	)
:: Copy CfgRemoteExec:Functions from mission's author
for /r "resources" %%F in (cfgremoteexecfunc.hp?) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgremoteexecfunc.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> xtra_cfgremoteexecfunc.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgremoteexecfunc.hpp
	)

echo CfgRemoteExec class was rebuilt

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding CfgFunctions class
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Build function classes on tag level for every script author
for /d %%D in (addons\*) do (
    for /d %%F in (%%D\*) do (
		if exist %%F\tag.txt (
			type a3skeleton\tag_header.txt > %%D\a3ms_autotag.hpp
			type %%F\tag.txt >> %%D\a3ms_autotag.hpp
			type a3skeleton\tag_footer.txt >> %%D\a3ms_autotag.hpp
			)
		)
	)


:: Build function classes for addons
for /d %%D in (addons\*) do (
	del %%D\tag_functions.hpp
    for /d %%F in (%%D\*) do (
		if exist %%F\functions.hpp (
			type a3skeleton\tag_function_header.txt >> %%D\tag_functions.hpp
			set string=%%F\functions.hpp
			set modified=!string:%%D\=!
			>> %%D\tag_functions.hpp (echo|set /p=!modified!^&rem)
			type a3skeleton\tag_function_footer.txt >> %%D\tag_functions.hpp
			)
		)	
	)
	
:: rebuild CfgFunctions class
:: Copy version info
copy a3skeleton\version.txt xtra_cfgfunctions.hpp >NUL
for /d %%D in (addons\*) do (
		type a3skeleton\tag_function_header.txt >> xtra_cfgfunctions.hpp
		set string=%%D\a3ms_autotag.hpp
		>> xtra_cfgfunctions.hpp (echo|set /p=!string!^&rem)
		type a3skeleton\tag_function_footer.txt >> xtra_cfgfunctions.hpp
	)

:: Include user's functions
type "a3skeleton\userfunctions.txt" >> xtra_cfgfunctions.hpp

echo CfgFunctions class was updated
echo.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding init.sqf script
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy version info
copy a3skeleton\version.txt init.sqf >NUL
:: Copy init.sqf commands from addon
for /r "addons" %%F in (init.s?f) do type "%%F" >> init.sqf
:: Copy init.sqf commands from mission's maker
for /r "scripts" %%F in (init.s?f) do type "%%F" >> init.sqf

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding initServer.sqf script
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy version info
copy a3skeleton\version.txt initServer.sqf >NUL
:: Copy initServer.sqf commands from addon
for /r "addons" %%F in (initServer.s?f) do type "%%F" >> initServer.sqf
:: Copy initServer.sqf commands from mission's maker
for /r "scripts" %%F in (initServer.s?f) do type "%%F" >> initServer.sqf

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding initPlayerLocal.sqf script
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy version info
copy a3skeleton\version.txt initPlayerLocal.sqf >NUL
:: Copy generic template
type  a3skeleton\initPlayerLocal.template >> initPlayerLocal.sqf
:: Copy initPlayerLocal.sqf commands from addon
for /r "addons" %%F in (initPlayerLocal.s?f) do type "%%F" >> initPlayerLocal.sqf
:: Copy initPlayerLocal.sqf commands from mission's maker
for /r "scripts" %%F in (initPlayerLocal.s?f) do type "%%F" >> initPlayerLocal.sqf

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding initPlayerServer.sqf script
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy version info
copy a3skeleton\version.txt initPlayerServer.sqf >NUL
:: Copy initPlayerServer.sqf commands from addon
for /r "addons" %%F in (initPlayerServer.s?f) do type "%%F" >> initPlayerServer.sqf
:: Copy initPlayerServer.sqf commands from mission's maker
for /r "scripts" %%F in (initPlayerServer.s?f) do type "%%F" >> initPlayerServer.sqf

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding onPlayerKilled.sqf script
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy version info
copy a3skeleton\version.txt onPlayerKilled.sqf >NUL
:: Copy onPlayerKilled.sqf commands from addon
for /r "addons" %%F in (onPlayerKilled.s?f) do type "%%F" >> onPlayerKilled.sqf
:: Copy onPlayerKilled.sqf commands from mission's maker
for /r "scripts" %%F in (onPlayerKilled.s?f) do type "%%F" >> onPlayerKilled.sqf

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding onPlayerRespawn.sqf script
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Copy version info
copy a3skeleton\version.txt onPlayerRespawn.sqf >NUL
:: Copy onPlayerRespawn.sqf commands from addon
for /r "addons" %%F in (onPlayerRespawn.s?f) do type "%%F" >> onPlayerRespawn.sqf
:: Copy onPlayerRespawn.sqf commands from mission's maker
for /r "scripts" %%F in (onPlayerRespawn.s?f) do type "%%F" >> onPlayerRespawn.sqf


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Rebuilding additional resources
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

copy a3skeleton\version.txt dialogs.hpp >NUL
:: Copy CfgRemoteExec:Functions from addons
for /r "addons" %%F in (cfgresources.hp?) do (
		type a3skeleton\tag_function_header.txt >> dialogs.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> dialogs.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> dialogs.hpp
	)
:: Copy CfgRemoteExec:Functions from mission's author
for /r "resources" %%F in (cfgresources.hp?) do (
		type a3skeleton\tag_function_header.txt >> dialogs.hpp
		set string=%%F
		set modified=!string:%cd%\=!
		>> dialogs.hpp (echo|set /p=!modified!^&rem)
		type a3skeleton\tag_function_footer.txt >> dialogs.hpp
	)

echo Mission build completed.
pause
