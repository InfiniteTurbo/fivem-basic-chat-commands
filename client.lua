RegisterCommand("me", function(source, args)
    TriggerServerEvent('me', table.concat(args, " "))
    
    sendMessageInDistance(args[1], 25.0)

end)

RegisterCommand("gooc", function(source, args)
    TriggerServerEvent('gooc', table.concat(args, " "))
    
end)

RegisterCommand("twt", function(source, args)
    TriggerServerEvent('tweet', table.concat(args, " "))
    
end)

RegisterCommand("deepweb", function(source, args)
    TriggerServerEvent('deepweb', table.concat(args, " "))
    
end)

RegisterCommand("ooc", function(source, args)
    TriggerServerEvent('ooc', table.concat(args, " "))

    sendMessageInDistance(args[1], 25.0)
end)

function sendMessageInDistance(message, distance)
	local coords = GetEntityCoords(GetPlayerPed(-1))
	for i = 0, 64 do
		if NetworkIsPlayerActive(i) then
			local ped = GetPlayerPed(id)
		    local playerCoords = GetEntityCoords(GetPlayerPed(i))
			if(Vdist(playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z) < distance)then
				TriggerServerEvent('message:inDistanceZone', GetPlayerServerId(id), message)
			end
		end
	end
end
