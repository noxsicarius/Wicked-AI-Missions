private ["_mags","_box","_numberofguns","_weapon","possibleWeaponsList"];
_box = _this select 0;

//_box = createVehicle ["BAF_VehicleBox",[(_position select 0),(_position select 1),0], [], 0, "CAN_COLLIDE"];
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];


clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

_numberofguns =  1;

possibleWeaponsList = [
"BAF_AS50_TWS",
"SMAW",
"BAF_LRR_scoped",
"FN_FAL_ANPVS4",
"M107",
"KSVK",
"BAF_L110A1_Aim"
];

_weapon = possibleWeaponsList call BIS_fnc_selectRandom;
_mags = getArray (configFile >> "cfgWeapons" >> _weapon >> "magazines");
_box addWeaponCargoGlobal [_weapon,1];
_box addMagazineCargoGlobal [(_mags select 0),round(random 2) + 1];

