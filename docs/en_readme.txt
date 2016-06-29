Arma 3 Mission Skeleton by longbow!
Version 1.0


Getting started for mission makers:

 1. Download the archive
 2. Unpack the content
 3. Read the en_concept.docx in template\doc folder inside the archive
 4. Copy the a3skeleton.* folders to your %missionsdir%
 5. Rename the a3skeleton.* folders to name you like
 6. Go to your mission's directory in Explorer
 7. Open stringtable.xml file with text editor
 8. Edit the values of following localization keys for all languages:
    STR_MISSION_AUTHOR
    STR_MISSION_ONLOADNAME
    STR_MISSION_ONLOADMISSION
    STR_MISSION_OVERVIEWTEXT
    STR_MISSION_OVERVIEWTEXT_LOCKED
 9. Replace images '%missionroot%\settings\loadscreen.paa' and
	'%missionroot%\settings\overview.paa' with your ones
10. Go through '%missionroot%\settings\*.hpp' files and change settings
	according to your needs.
11. Start Arma 3 and start editing mission. Try out the scenario to ensure
	your images, authorship, mission name and texts were updated



Script installation guide template
NOTE: Path starting with backslash ('\') means relative to %missionroot%

 0. Download script archive
 
 1. Extract folder from archive to '%missionroot%\addons\'. We will refer to
	this folder later as '%scriptfolder%', and we use "sample" as an example for folder name

NOTE: next steps are optional, remove those you do not need, file and dirnames are just examples

 2. Copy text from '%scriptfolder%\addto_stringtable.xml' and paste it into '\stringtable.xml'
	file after last </Package> tag and befor </Project> tag
	
 3. Edit '\dialogs.hpp', paste 2 lines in the end
// TAG: script name: some comment
#include "addons\sample\dialogs.hpp"

 4. Edit "xtra_cfgdebrifing.hpp" in mission's root and add lines:
// Addon: Sample: debriefing
#include "addons\sample\debriefing.hpp"

 5. Edit "xtra_cfgdebriefingsections.hpp" in mission's root and add lines:
// Addon: Sample: debriefing sections
#include "addons\sample\debriefingsections.hpp"

 6. Edit "xtra_cfgfunctions.hpp" in mission's root and add lines:
// Addon: Sample: functions
#include "addons\sample\functions.hpp"

 7. Edit "xtra_cfgidentities.hpp" in mission's root and add lines:
// Addon: Sample: identities
#include "addons\sample\identities.hpp"

 8. Edit "xtra_cfgmusic.hpp" in mission's root and add lines:
// Addon: Sample: music
#include "addons\sample\music.hpp"

 9. Edit "xtra_cfgnotifications.hpp" in mission's root and add lines:
// Addon: Sample: notifications
#include "addons\sample\notif.hpp"

10. Edit "xtra_cfgradio.hpp" in mission's root and add lines:
// Addon: Sample: radio
#include "addons\sample\radio.hpp"

11. Edit "xtra_cfgremoteexecfunc.hpp" in mission's root and add lines:
// Addon: Sample: remote exec functions
#include "addons\sample\remotefunc.hpp"

12. Edit "xtra_cfgsounds.hpp" in mission's root and add lines:
// Addon: Sample: sounds
#include "addons\sample\sounds.hpp"

13. Edit "xtra_cfgtasktypes.hpp" in mission's root and add lines:
// Addon: Sample: task types
#include "addons\sample\tasktypes.hpp"

14. Edit "xtra_cfgunitinsignia.hpp" in mission's root and add lines:
// Addon: Sample: custom insignia
#include "addons\sample\insignia.hpp"

15. Edit "xtra_params.hpp" in mission's root and add lines:
// Addon: Sample: script parameters
#include "addons\sample\params.hpp"

16. Edit "xtra_rsctitles.hpp" in mission's root and add lines:
// Addon: Sample: rsc titles
#include "addons\sample\rsctitles.hpp"

17. Same operations for *.sqf script files
