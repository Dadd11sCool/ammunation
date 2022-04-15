Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.Type         = 20

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.WhitelistedCops = {
	'ammunation'
}

Config.pos = {

	garage = {
		position = {x = -8.79, y = -1112.91, z = 28.49}
	},

	spawnvoiture = {
		position = {x = -8.79, y = -1112.91, z = 28.49, h = 158.19}
	},
        pos  = {
            {pos = vector3(-8.79, -1112.91, 28.49), heading = 158.19},  
            {pos = vector3(-8.79, -1112.91, 28.49), heading = 158.19},              
        },
    }
--Script reworked by Dadd1 1s Cool#7711
--for help join https://discord.gg/EgtraUJTh9 