AS_30L =
{
	category		= CAT_MISSILES,
	name			= "AS_30L",
	user_name		= _("AS_30L"),
	wsTypeOfWeapon 	= {wsType_Weapon, wsType_Missile, wsType_AS_Missile, WSTYPE_PLACEHOLDER},
	scheme			= "AGM-65E",              --"command_guided_spin_missile",   AGM-65E
	class_name		= "wAmmunitionSelfHoming",                          -- "wAmmunitionVikhr",
	model			= "AS_30L",
	 mass = 292,
	
	
	
	 Escort = 1,
        Head_Type = 4,
		sigma = {5, 5, 5},
        M = 286.0,
        H_max = 10000.0,
        H_min = -1,
        Diam = 305.0,
        Cx_pil = 4,
        D_max = 11112.0,
        D_min = 1000.0,
        Head_Form = 0,
        Life_Time = 110,
        Nr_max = 16,
        v_min = 50.0,
        v_mid = 290.0,
        Mach_max = 1.5,
        t_b = 0.0,
        t_acc = 4.0,
        t_marsh = 0.0,
        Range_max = 11112.0,
        H_min_t = 0.0,
        Fi_start = 0.5,
        Fi_rak = 3.14152,
        Fi_excort = 1.05,
        Fi_search = 99.9,
        OmViz_max = 99.9,
        --warhead = warheads["AGM_65E"],
        exhaust = {0.75, 0.75, 0.75, 0.1},
        X_back = -0.879,
        Y_back = -0.155,
        Z_back = 0.0,
        Reflection = 0.063,
        KillDistance = 5.0,
	 
	shape_table_data =
	{
		{
			name	 = "AS_30L",
			file	 = "AS_30L",
			life	 = 1,
			fire	 = { 0, 1},
			username = _("AS_30L"),
			index	 = WSTYPE_PLACEHOLDER,
				
			
		},
	},
	
	
	fm = {
		mass        = 292,  
		caliber     = 0.305,  
		cx_coeff    = {1,0.39,0.38,0.236,1.31},
		L           = 2.49,
		I           = 1 / 12 * 209 * 2.49 * 2.49,
		Ma          = 0.68,
		Mw          = 1.116,
		wind_sigma	= 0.0,
		wind_time	= 0.0,
		Sw			= 0.55,
		dCydA		= {0.07, 0.036},
		A			= 0.36,
		maxAoa		= 0.23,
		finsTau		= 0.1,
		Ma_x		= 3,
		Kw_x		= 0.03,
		I_x			= 40,
	},
	
	laser_spot_seeker = {
		FOV					= 0.558,
		max_seeker_range	= 18520,
	},

	PN_autopilot = {
		K			= 0.014,
		Ki			= 0,
		Kg			= 2.5,
		Kx			= 0.02,
		fins_limit	= 0.3,
		K_GBias		= 0.26,
	},
	
	march = {
		smoke_color			= {0.8, 0.8, 0.8},
		smoke_transparency	= 0.7,
	},
		
	--warhead = predefined_warhead("AGM_65E"),
	--warhead_air = predefined_warhead("AGM_65E"),
	warhead = simple_warhead(8500.0, 8500.0),
	warhead_air = simple_warhead(8500.0, 8500.0),
   
}

declare_weapon(AS_30L)





declare_loadout({
	category 		= CAT_MISSILES,
	CLSID	 		= "JAS_AGM65G",
	attribute		= AS_30L.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= AS_30L.Cx,
	Picture			= "AS-30L.png",
	displayName		= AS_30L.user_name,
	Weight			= AS_30L.mass,
	Elements  		= {{ShapeName = AS_30L.model}},
	
		
	
	
})
