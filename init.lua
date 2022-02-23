function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 5.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target
Config.OpenKey = 'LMENU' -- Left Alt
Config.OpenControlKey = 19 -- Control for keypress detection also Left Alt for the eye itself, controls are found here https://docs.fivem.net/docs/game-references/controls/

-- Key to open the menu
Config.MenuControlKey = 238 -- Control for keypress detection on the context menu, this is the Right Mouse Button, controls are found here https://docs.fivem.net/docs/game-references/controls/

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in


Config.CircleZones = {

}

Config.BoxZones = {
	["mechaniccraft"] = {
		name = "Mechanic Toolbox",
		coords = vector3(136.7, -3051.41, 7.04),
		length = 1,
		width = 1,
		heading = 0,
		debugPoly = false,
		minZ=3.44,
		maxZ=7.44,
		options = {
			{
				type = "client",
				event = "craft:mechanicparts", 
				icon = "fas fa-wrench",
				label = "Craft",
				job = "mechanic",
			},
		},
		distance = 2.5
	},
	["mojito_pdm"] = {
		name="mojito_pdm",
		coords=vector3(-39.95, -1094.33, 27.45),
		length=1.0,
		width=1.0,
		heading=295.05,
		debugPoly = false,
		minZ = 26.90,
		maxZ = 28.27,
		options = {
			{
				type="client",
				event="mojito_pdm:client:open",
				icon="fas fa-book-open",
				label="Open Catalogue"
			},
			{
				type="client",
				event="mojito_pdm:client:check_finance",
				icon="fas fa-comment-dollar",
				label="Check Finance"
			}
		},
		distance=1.0
	},
	["mojito_pdm2"] = {
		name="mojito_pdm2",
		coords=vector3(-39.32, -1100.27, 27.38),
		length=1.0,
		width=1.0,
		heading=112.43,
		debugPoly = false,
		minZ = 26.90,
		maxZ = 28.27,
		options = {
			{
				type="client",
				event="mojito_pdm:client:open",
				icon="fas fa-book-open",
				label="Open Catalogue"
			},
			{
				type="client",
				event="mojito_pdm:client:check_finance",
				icon="fas fa-comment-dollar",
				label="Check Finance"
			}
		},
		distance=1.0
	},
	["mojito_pdm3"] = {
		name="mojito_pdm3",
		coords=vector3(-47.08, -1095.07, 27.44),
		length=1.0,
		width=1.0,
		heading=6.05,
		debugPoly = false,
		minZ = 26.90,
		maxZ = 28.27,
		options = {
			{
				type="client",
				event="mojito_pdm:client:open",
				icon="fas fa-book-open",
				label="Open Catalogue"
			},
			{
				type="client",
				event="mojito_pdm:client:check_finance",
				icon="fas fa-comment-dollar",
				label="Check Finance"
			}
		},
		distance=1.0
	},
	["mojito_pdm4"] = {
		name="mojito_pdm4",
		coords=vector3(-51.99, -1095.14, 27.5),
		length=1.0,
		width=1.0,
		heading=119.69,
		debugPoly = false,
		minZ = 26.90,
		maxZ = 28.27,
		options = {
			{
				type="client",
				event="mojito_pdm:client:open",
				icon="fas fa-book-open",
				label="Open Catalogue"
			},
			{
				type="client",
				event="mojito_pdm:client:check_finance",
				icon="fas fa-comment-dollar",
				label="Check Finance"
			}
		},
		distance=1.0
	},
	["mojito_pdm5"] = {
		name="mojito_pdm5",
		coords=vector3(-50.92, -1086.5, 27.27),
		length=1.0,
		width=1.0,
		heading=336.99,
		debugPoly = false,
		minZ = 26.90,
		maxZ = 28.27,
		options = {
			{
				type="client",
				event="mojito_pdm:client:open",
				icon="fas fa-book-open",
				label="Open Catalogue"
			},
			{
				type="client",
				event="mojito_pdm:client:check_finance",
				icon="fas fa-comment-dollar",
				label="Check Finance"
			}
		},
		distance=1.0
	},

}

Config.PolyZones = {

}

Config.TargetBones = {
	["mechanic"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r"
        },
        options = {
            {
                type = "client",
                event = "craft:vehmenu",
                icon = "fad fa-key",
                label = "Vehicle Menu",
                job = "mechanic",
            },
        },
        distance = 3.0
    },
}

Config.TargetEntities = {

}

Config.TargetModels = {
	["trashsearch"] = {
        models = {
			-1096777189,--normal small
			666561306,--big
			1437508529,--small circle
			-1426008804,--small open circle
			-228596739,--open small circle
			161465839,--werid blue small circle
			651101403,--open medium circle

        },
        options = {
            {
                type = "client",
                event = "qb-trashsearch:client:searchtrash",
                icon = "fas fa-pencil-ruler",
                label = "Search Trash",
            },
        },
        distance = 2.1
    },

	["atms"] = {        
    models = {            
        'prop_atm_01',            
        'prop_atm_02',            
        'prop_atm_03',            
        'prop_fleeca_atm',        
    },        
    options = {            
        {                
              type = "command",                
              event = "atm",                
              icon = "fab fa-credit-card",                
              label = "Insert Card",            
        },        
    },        
    distance = 1.0    
},
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {
	options = {
        {
            type = "client",
            event = "police:client:ImpoundVehicle",
            icon = "fas fa-car",
            label = "Impound Vehicle",
            job = 'police',
        },
        {
            type = "client",
            event = "vehiclekeys:client:GiveKeys",
            icon = "fas fa-key",
            label = "Give Vehicle Keys",
        },
        {
            type = "client",
            event = "police:client:EscortPlayer",
            icon = "fas fa-hand-holding",
            label = "Escort Out Of Vehicle",
        },
        {
            type = "client",
            event = 'qb-trunk:client:GetIn',
            icon = "fas fa-truck",
            label = "Hop Inside Trunk",
        },
        {
            type = "client",
            event = "police:client:PutPlayerInVehicle",
            icon = "fas fa-chevron-circle-left",
            label = "Place Inside Vehicle",
        },
        {
            type = "client",
            event = "police:client:SetPlayerOutVehicle",
            icon = "fas fa-chevron-circle-right",
            label = "Take Out Of Vehicle",
        },
    },
    distance = 2.5,
}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {
	options = {
        {
            type = "client",
            event = "police:client:EscortPlayer",
            icon = "fas fa-hand-holding",
            label = "Escort Individual",
        },
        {
            type = "client",
            event = "police:client:CuffPlayer",
            icon = "fas fa-hands",
            label = "Cuff / Uncuff Individual",
            item = 'handcuffs',
        },
        {
            type = "client",
            event = "police:server:KidnapPlayer",
            icon = "fas fa-hand-holding",
            label = "Kidnap Individual",
        },
        {
            type = "client",
            event = "police:client:RobPlayer",
            icon = "fas fa-user-secret",
            label = "Rob Individual",
        },
        {
            type = "client",
            event = "A5:Client:TakeHostage",
            icon = "fas fa-user-secret",
            label = "Take Hostage",
        },
    }
}

Config.Peds = {
		-- Hardware Store
		[1] = {
			model = 'mp_m_waremech_01', 
			coords = vector4(45.55, -1749.01, 29.6, 52.24),
			minusOne = true, 
			freeze = true, 
			invincible = true, 
			blockevents = true,
			target = { 
				options = {
					{
						type = "client",
						event = "qb-shops:marketshop",
						icon = "fas fa-shopping-basket",
						label = "Hardware Store",
					},{
						type = "client",
						event = "qb-shops:marketshop",
						icon = "fas fa-shopping-basket",
						label = "Hardware Store",
					},
				},
				distance = 2.5,
			},
			currentpednumber = 0,
		  },
		  -- City Hall - Drivers/Id/Weapon License 
		  [2] = {
			  model = 'u_f_m_casinoshop_01', 
			  coords = vector4(-265.94, -962.06, 31.22, 216.67), 
			  minusOne = true,
			  freeze = true,
			  invincible = true,
			  blockevents = true,
			  animDict = 'abigail_mcs_1_concat-0',
			  anim = 'csb_abigail_dual-0', 
			  flag = 1, 
			  scenario = 'WORLD_HUMAN_AA_COFFEE', 
			  target = { 
				options = { 
					{ 
						type = "server", 
						event = "qb-cityhall:server:requestid",
						icon = 'fas fa-id-badge', 
						label = 'Buy A ID Card',
					},
					{
						type = "server",
						event = "qb-cityhall:server:requestdriver",
						icon = 'fas fa-id-badge',
						label = "Buy a Driver\'s License",
					},
					{
						type = "server",
						event = "qb-cityhall:server:requestweapon",
						icon = 'fas fa-id-badge',
						label = "Buy a Weapon License",
					}
				},
				distance = 2.5, 
					  },
				},
				-- Black Market
				[3] = {
				  model = "mp_m_exarmy_01",
				 coords = vector4(-597.75, 226.45, 73.64, 186.59),
				 gender = 'male',
				   minusOne = true,
				   freeze = true, 
				   invincible = true,
				   blockevents = true,
				   scenario = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',
				   target = {
					   options = {
						   {
							   type = "client",
							   event = "qb-shops:marketshop",
							   icon = "fas fa-shopping-basket",
							   label = "Weapons",
						   },{
							   type = "client",
							   event = "qb-shops:marketshop",
							   icon = "fas fa-shopping-basket",
							   label = "Jo",
						   },
					   },
					   distance = 2.5,
				   },
				   currentpednumber = 0,
				 },
				-- 24/7 shops
		  [4] = {
		   model = "mp_m_shopkeep_01",
		  coords = vector4(1959.72, 3740.68, 32.34, 297.43),
		  gender = 'male',
			minusOne = true,
			freeze = true,
			invincible = true,
			blockevents = true,
			scenario = 'WORLD_HUMAN_AA_SMOKE', 
			target = {
				options = {
					{
						type = "client",
						event = "qb-shops:marketshop",
						icon = "fas fa-shopping-basket",
						label = "Quickie Stop",
					},
				},
				distance = 2.5,
			},
			currentpednumber = 0,
		  },
		  [5] = {
			  model = "a_m_m_indian_01",
			 coords = vector4(1727.78, 6415.34, 35.04, 235.05),
			 gender = 'male',
			   minusOne = true,
			   freeze = true, 
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_STAND_IMPATIENT', 
			   target = {
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [6] = {
			  model = "a_m_m_indian_01",
			 coords = vector4(549.05, 2671.38, 42.16, 93.9),
			 gender = 'male',
			   minusOne = true, 
			   freeze = true, 
			   invincible = true,
			   blockevents = true,
			   scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [7] = { -- liquor store
			  model = "s_m_m_cntrybar_01",
			 coords = vector4(1165.26, 2710.96, 38.16, 182.64),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Hardware Store",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [8] = {
			  model = "mp_m_shopkeep_01",
			 coords = vector4(1164.95, -323.86, 69.21, 97.37),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [9] = {
			  model = "mp_m_shopkeep_01",
			 coords = vector4(2678.27, 3279.21, 55.24, 326.77),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [10] = {
			  model = "mp_m_shopkeep_01",
			 coords = vector4(-3242.05, 999.9, 12.83, 354.35),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [11] = {
			  model = "mp_m_shopkeep_01",
			 coords = vector4(-3040.76, 583.96, 7.91, 16.87),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [12] = { -- liquor store
			  model = "a_m_m_ktown_01",
			 coords = vector4(-2966.41, 391.58, 15.04, 89.34),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_BUM_STANDING', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Hardware Store",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [13] = {
			  model = "a_m_m_indian_01",
			 coords = vector4(-1819.5, 793.46, 138.09, 133.75),
			 gender = 'male',
			   minusOne = true, 
			   freeze = true, 
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_DRINKING', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [14] = {
			  model = "a_m_m_indian_01",
			 coords = vector4(2557.26, 380.7, 108.62, 359.13),
			 gender = 'male',
			   minusOne = true, 
			   freeze = true, 
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_DRINKING_FACILITY', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [15] = { -- liquor store
			 model = "a_m_m_farmer_01",
			coords = vector4(1134.27, -982.82, 46.42, 276.31),
			gender = 'male',
			  minusOne = true,
			  freeze = true,
			  invincible = true,
			  blockevents = true,
			  scenario = 'WORLD_HUMAN_JANITOR', 
			  target = { 
				  options = {
					  {
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Quickie Stop",
					  },{
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Hardware Store",
					  },
				  },
				  distance = 2.5,
			  },
			  currentpednumber = 0,
			},
			[16] = {
			model = "a_m_m_indian_01",
		   coords = vector4(-47.46, -1758.89, 29.42, 56.27),
		   gender = 'male',
			 minusOne = true,
			 freeze = true,
			 invincible = true,
			 blockevents = true,
			 scenario = 'WORLD_HUMAN_JANITOR', 
			 target = { 
				 options = {
					 {
						 type = "client",
						 event = "qb-shops:marketshop",
						 icon = "fas fa-shopping-basket",
						 label = "Quickie Stop",
					 },
				 },
				 distance = 2.5,
			 },
			 currentpednumber = 0,
		   },
		   [17] = {
			  model = "a_m_m_indian_01",
			 coords = vector4(24.42, -1345.72, 29.5, 271.73),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_STAND_IMPATIENT_CLUBHOUSE', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [18] = {
			  model = "s_m_m_strvend_01",
			 coords = vector4(372.94, 328.15, 103.57, 246.22),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_WINDOW_SHOP_BROWSE', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [19] = {
			 model = "a_m_m_ktown_01",
			coords = vector4(-706.07, -912.97, 19.22, 86.78),
			gender = 'male',
			  minusOne = true,
			  freeze = true,
			  invincible = true,
			  blockevents = true,
			  scenario = 'WORLD_HUMAN_WINDOW_SHOP_BROWSE', 
			  target = { 
				  options = {
					  {
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Quickie Stop",
					  },
				  },
				  distance = 2.5,
			  },
			  currentpednumber = 0,
			},
			[20] = { -- liquor store
			  model = "a_m_m_ktown_01",
			 coords = vector4(-1221.35, -907.92, 12.33, 48.19),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_AA_SMOKE', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Hardware Store",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [21] = { -- liquor store
			 model = "s_m_y_busboy_01",
			coords = vector4(-1486.07, -378.2, 40.16, 130.82),
			gender = 'male',
			  minusOne = true,
			  freeze = true,
			  invincible = true,
			  blockevents = true,
			  scenario = 'WORLD_HUMAN_WINDOW_SHOP_BROWSE', 
			  target = { 
				  options = {
					  {
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Quickie Stop",
					  },{
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Hardware Store",
					  },
				  },
				  distance = 2.5,
			  },
			  currentpednumber = 0,
			},
			-------------------------------------------------
			------------------- GUN SHOPS ------------------- 
			  -------------------------------------------------
			  [22] = {
			  model = "s_m_y_ammucity_01",
			 coords = vector4(811.19, -2159.05, 29.62, 359.01),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [23] = {
			  model = "s_m_y_ammucity_01",
			 coords = vector4(840.18, -1032.26, 28.19, 321.85),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [24] = {
			  model = "s_m_y_ammucity_01",
			 coords = vector4(253.87, -50.55, 69.94, 73.32),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [25] = {
			  model = "s_m_y_ammucity_01",
			 coords = vector4(23.11, -1105.64, 29.8, 150.8),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [26] = {
			  model = "s_m_y_ammucity_01",
			 coords = vector4(-664.11, -933.52, 21.83, 177.72),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [27] = {
			  model = "s_m_m_ammucountry",
			 coords = vector4(2565.88, 293.67, 108.75, 301.15),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [28] = {
			  model = "s_m_m_ammucountry",
			 coords = vector4(1692.07, 3760.83, 34.71, 229.4),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [29] = {
			  model = "s_m_m_ammucountry",
			 coords = vector4(-1115.07, 2698.97, 18.55, 193.64),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [30] = {
			  model = "s_m_m_ammucountry",
			 coords = vector4(-331.07, 6085.6, 31.45, 228.84),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'WORLD_HUMAN_HANG_OUT_STREET', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Buy weapons",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Repair weapons",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
		  -------------------------------------------------
		  ------------------- HARDWARE STORES ------------- 
			-------------------------------------------------
			 [31] = {
			  model = 'mp_m_waremech_01', 
			  coords = vector4(-422.15, 6134.03, 31.88, 164.23),
			  minusOne = true, 
			  freeze = true, 
			  invincible = true, 
			  blockevents = true,
			  target = { 
				  options = {
					  {
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Hardware Store",
					  },{
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Hardware Store",
					  },
				  },
				  distance = 2.5,
			  },
			  currentpednumber = 0,
			},
			[32] = {
			  model = 'mp_m_waremech_01', 
			  coords = vector4(2747.53, 3472.92, 55.67, 243.03),
			  minusOne = true, 
			  freeze = true, 
			  invincible = true, 
			  blockevents = true,
			  target = { 
				  options = {
					  {
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Hardware Store",
					  },{
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Hardware Store",
					  },
				  },
				  distance = 2.5,
			  },
			  currentpednumber = 0,
			},
			-- RESTAURANT INGREDIENT SALES
			[33] = {
			  model = 's_m_m_dockwork_01', 
			  coords = vector4(1208.32, -3113.75, 5.54, 72.22),
			  minusOne = true, 
			  freeze = true, 
			  invincible = true, 
			  blockevents = true,
			  target = { 
				  options = {
					  {
						  type = "client",
						  event = "qb-shops:marketshop",
						  icon = "fas fa-shopping-basket",
						  label = "Restaurant Ingredient shop",
					  },
				  },
				  distance = 2.5,
			  },
			  currentpednumber = 0,
			},
			-- SELLING FISH
			[34] = {
			  model = 'a_m_y_polynesian_01', 
			  coords = vector4(-1592.13, -1005.49, 13.02, 230.7),
			  minusOne = true, 
			  freeze = true, 
			  invincible = true, 
			  blockevents = true,
			  target = { 
				  options = {
					  {
						  type = "client",
						  event = "NOSECS_Fishing:SellFish",
						  icon = "fas fa-shopping-basket",
						  label = "Sell Fish",
					  },{
						  type = "client",
						  event = "NOSECS_Fishing:SellFish",
						  icon = "fas fa-shopping-basket",
						  label = "Sell Fish",
					  },
				  },
				  distance = 2.5,
			  },
			  currentpednumber = 0,
			},
			[35] = { -- liquor store
			  model = "s_m_m_cntrybar_01",
			 coords = vector4(-161.16, 6321.17, 31.59, 311.29),
			 gender = 'male',
			   minusOne = true,
			   freeze = true,
			   invincible = true,
			   blockevents = true,
			   scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
			   target = { 
				   options = {
					   {
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Quickie Stop",
					   },{
						   type = "client",
						   event = "qb-shops:marketshop",
						   icon = "fas fa-shopping-basket",
						   label = "Hardware Store",
					   },
				   },
				   distance = 2.5,
			   },
			   currentpednumber = 0,
			 },
			 [36] = { -- Pop's Diner
			   model = "a_f_y_gencaspat_01",
			  coords = vector4(1588.86, 6456.58, 26.01, 150.7),
			  gender = 'female',
				minusOne = true,
				freeze = true,
				invincible = true,
				blockevents = true,
				scenario = 'PROP_HUMAN_STAND_IMPATIENT', 
				target = { 
					options = {
						{
							type = "client",
							event = "qb-shops:marketshop",
							icon = "fas fa-shopping-basket",
							label = "Pop's Diner",
						},
					},
					distance = 2.5,
				},
				currentpednumber = 0,
			  },

}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	if not Config.Standalone then
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return true
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	else
		local firstSpawn = false
		AddEventHandler('playerSpawned', function()
			if not firstSpawn then
				SpawnPeds()
				firstSpawn = true
			end
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCount(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end