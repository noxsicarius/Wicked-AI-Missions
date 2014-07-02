private ["_mission","_mags","_tool","_box","_class","_numberofguns","_numberoftools","_weapon","_namecfg","_numberofitems","_item"];
_box = _this select 0;

//_box = createVehicle ["BAF_VehicleBox",[(_position select 0),(_position select 1),0], [], 0, "CAN_COLLIDE"];
_box setVariable ["ObjectID","1",true];
_box setVariable ["permaLoot",true];
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_box];


clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

_numberofguns =  1;
_numberoftools = (round (random 2)) + wai_mission_numberoftools;

for "_i" from 1 to _numberofguns do {
	_weapon = "M9SD";
	_mags = getArray (configFile >> "cfgWeapons" >> _weapon >> "magazines");
	_box addWeaponCargoGlobal [_weapon,1];
	_box addMagazineCargoGlobal [(_mags select 0),round(random 2) + 1];
};
for "_i" from 1 to _numberoftools do {
	_tool = ammo_box_tools call BIS_fnc_selectRandom;
	_box addWeaponCargoGlobal [_tool,1];
};
	_box addMagazineCargoGlobal ["CinderBlocks",25];
	_box addMagazineCargoGlobal ["ItemComboLock",1];
	_box addMagazineCargoGlobal ["ItemSandbag",3];
	_box addMagazineCargoGlobal ["MortarBucket",5];
	_box addMagazineCargoGlobal ["PartPlywoodPack",8];
	_box addMagazineCargoGlobal ["PartPlankPack",5];
	_box addMagazineCargoGlobal ["ItemWire",2];
	_box addMagazineCargoGlobal ["PartGeneric",3];
	_box addMagazineCargoGlobal ["ItemTankTrap",2];