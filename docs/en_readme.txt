Arma 3 Mission Skeleton by longbow!
Version 1.1

Arma 3 Mission Skeleton is a set file and build script, which allows to ease
mission's file management and development, it also provides a simple and
straightforward way to install third party code.


General assumptions
1. All files are saved in UTF-8 encoding
2. All third party scripts are located under "addons" folder inside %missionroot%
3. Script addon creator uses a unique tag for functions and variable of all his addons
4. One script addon - one folder for it.
5. Script addons are grouped by author inside "addons"
%missionroot%
	addons\
		author1\
			addon1\
			addon2\
		author2
			addon3\
		author3
			addon4\
			addon5\
			addon6\

6. Both mission and script authors maintain their localization sctrings under <Package /> tag
7. All files in %missionroot% are generated automatically by a build script
8. Mission author edits his mission files only in "settings","scripts","resources","i18n" and "functions" dirs.
9. All carefully comply with the guide lines.


The build process
Build process is handled by a build.bat script, located in the %missionroot%.
It iterates through addons and mission makers files and generates a stringtable.xml
and various include files used in Description/ext's classes.