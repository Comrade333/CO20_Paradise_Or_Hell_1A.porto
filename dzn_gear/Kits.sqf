// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "CUP_NVG_PVS7" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

#define SEAL_HELM ["CUP_H_USArmy_Helmet_Protec_NVG","CUP_H_FR_BandanaGreen","TRYK_H_Bandana_H","usm_bdu_boonie_wdl"]
kit_seal_pl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll_gloves_dirty_M81","CUP_V_B_RRV_Scout","usm_pack_st138_prc77",SEAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["SmokeShellGreen",1],["HandGrenade",2],["HANDGUN MAG",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_seal_sl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll_gloves_dirty_M81","CUP_V_B_RRV_Scout","usm_pack_st138_prc77",SEAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["SmokeShellGreen",1],["HandGrenade",2],["HANDGUN MAG",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_seal_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll_gloves_dirty_M81","CUP_V_B_RRV_Scout","","usm_bdu_boonie_wdl",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["SmokeShellGreen",1],["HandGrenade",2],["HANDGUN MAG",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_seal_mg = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll_gloves_dirty_M81","CUP_V_B_RRV_MG_GRN","CUP_B_AlicePack_OD",SEAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_M60E4_norail","CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",3],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];
kit_seal_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll_gloves_dirty_M81","CUP_V_B_RRV_Scout","CUP_B_AlicePack_OD",SEAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Colt727","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",3],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["DemoCharge_Remote_Mag",3],["ACE_Clacker",1]]]
];
kit_seal_mm = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll_gloves_dirty_M81","CUP_V_B_RRV_Scout","CUP_B_AlicePack_OD",SEAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_M21","CUP_20Rnd_762x51_DMR",["CUP_muzzle_snds_M14","","CUP_optic_artel_m14","CUP_bipod_VLTOR_Modpod_black"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",3],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",14],["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",2]]]
];
kit_seal_gr = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll_gloves_dirty_M81","CUP_V_B_RRV_Scout","CUP_B_AlicePack_OD",SEAL_HELM,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Colt727_M203","CUP_30Rnd_556x45_Stanag",["muzzle_snds_M","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",3],["PRIMARY MAG",8],["rhs_mag_M441_HE",2]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["rhs_mag_M441_HE",15],["DemoCharge_Remote_Mag",3]]]
];
kit_us_pilot = [
	["<EQUIPEMENT >>  ","CUP_U_B_USArmy_PilotOverall","CUP_V_B_PilotVest","","CUP_H_SPH4_green_visor",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["HANDGUN MAG",3],["Chemlight_blue",2],["SmokeShellBlue",2],["SmokeShellGreen",2],["B_IR_Grenade",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
#define CUBA_HEAD ["H_Booniehat_oli","ssh68_khaki","CUP_H_US_patrol_cap_OD"]
kit_cuban_random = [
	"kit_cuban_r"
	,"kit_cuban_mg"
	,"kit_cuban_r"
	,"kit_cuban_gr"
	,"kit_cuban_r"
	,"kit_cuban_lat"
	,"kit_cuban_r"
	,"kit_cuban_r"
	,"kit_cuban_r"
];
kit_cuban_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_SLA_Green","CUP_V_O_SLA_Carrier_Belt02","",CUBA_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM_Early","CUP_30Rnd_762x39_AK47_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_cuban_mg = [
	["<EQUIPEMENT >>  ","CUP_U_O_SLA_Green","CUP_V_O_SLA_Carrier_Belt02","CUP_B_SLA_Medicbag",CUBA_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1]]]
];
kit_cuban_gr = [
	["<EQUIPEMENT >>  ","CUP_U_O_SLA_Green","CUP_V_O_SLA_Carrier_Belt02","CUP_B_SLA_Medicbag",CUBA_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM_GL_Early","CUP_30Rnd_762x39_AK47_bakelite_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_30Rnd_762x39_AK47_M",5],["CUP_1Rnd_HE_GP25_M",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_cuban_lat = [
	["<EQUIPEMENT >>  ","CUP_U_O_SLA_Green","CUP_V_O_SLA_Carrier_Belt02","","H_Booniehat_oli",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM_Early","CUP_30Rnd_762x39_AK47_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152_3"],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];