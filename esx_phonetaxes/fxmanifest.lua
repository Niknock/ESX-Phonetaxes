fx_version 'cerulean'
lua54 'on'
games { 'gta5' }

author 'Niknock HD'
description 'Phone Taxes'
version '2.1.0'

dependencies {
	'es_extended'
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client.lua',
	'locales/*.lua',
}

server_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'server.lua',
	'locales/*.lua',
}

dependency '/assetpacks'