
	_dir = getDir _this;
	_chute = createVehicle ["B_Parachute_02_F", position _this, [], 0, 'FLY'];
	_chute setDir _dir;
	_this attachTo [_chute, [0, 0, 0.18]];
	waitUntil {position _this select 2 < 2 || isNull _chute};
	detach _this;
	_this setPos [position _this select 0, position _this select 1, 1];