//objectives

 JTAC addEventhandler["Killed", {
	AirSupport = [] spawn {
		_targetdir = getMarkerPos "mrkVTOL" getdir getmarkerpos "mrkObjective";
		_AirSupportEvent = [getMarkerPos "mrkVTOL", _targetdir, "O_T_VTOL_02_INFANTRY_F", EAST] call bis_fnc_spawnvehicle;
		_XianPlane = (_AirSupportEvent select 0);
		_XianGroup = (_AirSupportEvent select 2);
		{_x setUnitRank "COLONEL"; _x setUnitAbility 1; } foreach units _XianGroup;
		_XianPlane allowCrewInImmobile true;
		_XianPlane setVehicleLock "LOCKED";
		_XianPlane setUnloadInCombat [false, false];
		_wpAirSupport = (_XianGroup) addWaypoint [getMarkerPos "mrkObjective", 0]; 
		_wpAirSupport setWaypointBehaviour "COMBAT"; 
		_wpAirSupport setWaypointCombatMode "RED"; 
		_wpAirSupport setWaypointType "SAD";
		{_XianGroup reveal [_x,4]} forEach allPlayers;
		"@$&#%^!%#!" remoteExecCall["hint", 0];
	};
	}
];