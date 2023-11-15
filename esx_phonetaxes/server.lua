local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

Citizen.CreateThread(function()
	
	while true do

	for k, playerid in pairs(GetPlayers()) do
		local xPlayer = ESX.GetPlayerFromId(playerid)
		if xPlayer.getInventoryItem(Config.Item) ~= nil then
			local phoneCount = xPlayer.getInventoryItem(Config.Item).count
			if phoneCount > 0 then
			local phonetax = Config.Phonetaxes
			xPlayer.removeAccountMoney('bank', phonetax)

		--msg
		TriggerClientEvent('tax:phonemsg', xPlayer.source, Config.CHAR, _U('you_have') ..phonetax.. _U('payed_phonetax'), _U('bank'), _U('taxes_payed'))
		end
	end
end

		Citizen.Wait(Config.Minutes * 60000)
	end

end)