private "_changelog";

player createDiarySubject ["skelchangelog",(localize "STR_A3MS_CHANGELOG")];

_changelog = call compile preprocessFileLineNumbers "settings\changelog.sqf";

{
	private ["_title","_text"];
	_title = _x select 0;
	_text = _x select 1;
	// attempt to localize
	_title = if (isLocalized _title) then {localize _title} else {_title};
	_text = if (isLocalized _text) then {localize _text} else {_text};
	player createDiaryRecord ["skelchangelog",[_title,_text]];
} forEach _changelog;
