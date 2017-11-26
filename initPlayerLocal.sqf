//Briefing
player createDiaryRecord ["Diary", ["Assets", "You have at your disposal:<br/>
- 1 V-44 X Blackfish Gunship<br/>
- 1 Prowler Armed Light Strike Vehicle"]];

player createDiaryRecord ["Diary", ["Mission Overview", "Our contact was captured and brought to the CSAT-occupied city of Georgetown.<br/>
Use the tools at your disposal to bring him back safely."]];

player createDiaryRecord ["Diary", ["Enemy presence", "CSAT Mechanized infantry and Armor. Possible VIPER team activity."]];

player createDiaryRecord ["Diary", ["Support", "The V-44 X Blackfish is equipped with the following weapons: <br/>
A 20mm gatling cannon loaded with HE-FRAG<br/>
A 40mm cannon loaded with APFSDS-T<br/>
A 100mm cannon loaded with HEAT-MP.
"]];


/****************************

			Gear!

****************************/

removeallweapons player; 
removeAllItems player;
removeAllAssignedItems player;
removeBackpack player;

player forceAddUniform "U_B_CTRG_Soldier_F";
player addVest "V_PlateCarrier1_rgr_noflag_F";
player addHeadgear "H_HelmetB_TI_tna_F";
player addBackpack "B_TacticalPack_blk";
player addGoggles "G_Balaclava_TI_G_tna_F";

player addWeapon "Binocular";
player linkItem "ItemRadio";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "itemMicroDagr"; 
player linkItem "NVGogglesB_grn_F";

player addMagazines ["30Rnd_556x45_Stanag_Tracer_Yellow",2];
player addMagazine "11Rnd_45ACP_Mag";
player addWeapon "arifle_SPAR_01_khk_F";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "optic_Hamr_khk_F";
player addPrimaryWeaponItem "bipod_01_F_khk";
player addWeapon "hgun_Pistol_heavy_01_F";
player addHandgunItem "muzzle_snds_acp";
player addHandgunItem "optic_MRD";

//set up gear for specific types first
switch (typeOf player) do 
{
	case "B_recon_TL_F":
	{

	player linkItem "ItemAndroid";
	removebackpack player;
	player addbackpack "tf_rt1523g_fabric";
	};
	
	case "B_recon_exp_F":
	{
	player addItem "Toolkit";
	player addItem "ACE_defusalKit";
	player addItem "ACE_clacker";
	player addMagazines["DemoCharge_Remote_Mag", 3];
	};
	
	case "B_recon_medic_F":
	{
	
		if ( ace_medical_level == 2) then 
			{
				player AddItem "ACE_surgicalKit";
				for "_i" from 1 to 15 do {player addItem "ACE_morphine";};
				for "_i" from 1 to 15 do {player addItem "ACE_epinephrine";};
				for "_i" from 1 to 5 do {player addItem "ACE_bloodIV";};
				for "_i" from 1 to 10 do {player addItem "ACE_fieldDressing";};
				for "_i" from 1 to 10 do {player addItem "ACE_tourniquet";};
				for "_i" from 1 to 20 do {player addItem "ACE_elasticBandage";};
				for "_i" from 1 to 30 do {player addItem "ACE_packingBandage";};
				for "_i" from 1 to 2 do {player addItem "ACE_personalAidKit";};
				player AddItem "ACE_Defibrillator";
			}
			else
			{
				for "_i" from 1 to 20 do {player addItemToBackpack "ACE_morphine";};
				for "_i" from 1 to 50 do {player addItemToBackpack "ACE_fieldDressing";};
				for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
				for "_i" from 1 to 5 do {player addItemToBackpack "ACE_bloodIV";};
			};
	};

	
	default
	{
	};
	
};


//Medical for non-medics
if ( ace_medical_level == 2) then 
			{
				for "_i" from 1 to 2 do {player addItem "ACE_morphine";};
				for "_i" from 1 to 1 do {player addItem "ACE_epinephrine";};
				for "_i" from 1 to 2 do {player addItem "ACE_fieldDressing";};
				for "_i" from 1 to 4 do {player addItem "ACE_elasticBandage";};
				for "_i" from 1 to 6 do {player addItem "ACE_packingBandage";};
				for "_i" from 1 to 4 do {player addItem "ACE_tourniquet";};
				player additem "ACE_bloodIV_250";
			}
			else
			{
				for "_i" from 1 to 20 do {player addItem "ACE_fieldDressing";};
				for "_i" from 1 to 4 do {player addItem "ace_morphine";};
				for "_i" from 1 to 2 do {player addItem "ACE_epinephrine";};
			};

//ammo
player addMagazines ["30Rnd_556x45_Stanag_Tracer_Yellow",7];
player addMagazines ["11Rnd_45ACP_Mag",1];
player addMagazines ["SmokeShell",2];
player addMagazines ["SmokeShellRed",5];
player addMagazines ["SmokeShellGreen",5];
player additem "ACE_IR_Strobe_Item";
player addMagazines ["B_IR_Grenade",2];
player addMagazines ["MiniGrenade",4];

//Sets insignia.
switch (player getVariable "InsigniaType") do {
	case "TF141": 
	{ 
		[ player, "snx_ins_TaskForce141Patch"] call BIS_fnc_setUnitInsignia 
	};
	
};


if (typeOf player == "B_T_Pilot_F") then 
{
	removeallweapons player; 
	removeAllItems player;
	removeAllAssignedItems player;
	removegoggles player;
	removevest player;
	removeBackpack player;

	player forceAddUniform "U_B_PilotCoveralls";
	player addHeadgear "H_PilotHelmetFighter_B";
	player addBackpack "B_Parachute";

	player addWeapon "Binocular";
	player linkItem "ItemRadio";
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "B_UavTerminal"; 

	player addMagazines ["30Rnd_556x45_Stanag_Tracer_Yellow",2];
	player addMagazine "11Rnd_45ACP_Mag";
	player addWeapon "arifle_SPAR_01_khk_F";
	player addWeapon "hgun_Pistol_heavy_01_F";
	player addHandgunItem "muzzle_snds_acp";
	player addHandgunItem "optic_MRD";
	
	
	
	addMissionEventHandler ["Draw3D", 
	{
		{
			if(player != _x && player != driver _x)then
			{
				_name = name driver _x;
				_range = floor(player distance _x);
				_jetname = vehicle _x;
				_color=[0,0.5,1,0.8];
				_size=0.02;
				_icon = "\A3\ui_f\data\map\markers\military\objective_ca.paa";
				_wh=0.6;
				if(_range<1000)then
				{
					_size=0.030;
					_wh=0.7;
				};
				if(_range<500)then
				{
					_size=0.030;
					_wh=0.9;
				};
				if(_range<250)then
				{
					_wh=1;
				};
				if(_range<50)then
				{
					_wh=1.1;
				};
				if (damage _x >= 1) then 
				{
				_icon = "\A3\ui_f\data\map\markers\military\objective_ca.paa";
				_color=[0,0,0,0.5];
				};
				_position = [position _x select 0, position _x select 1, ((position _x select 2) + 0.3)];
				drawIcon3D [_icon, _color, _position, _wh, _wh, 0, format ["%1 Dist:%2",_name,_range], 1, _size, "PuristaMedium"]; 
			};
		} 
		forEach (units (group SQL));
	}];
};