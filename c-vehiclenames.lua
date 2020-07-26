ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local Vehicles = {
    {label = 'Araç Adı', spawnName = 'araçspawnkodu'},
    {label = 'Araç Adı', spawnName = 'araçspawnkodu'}
}

Citizen.CreateThread(function()
    for num,vehicle in ipairs(Vehicles) do
        AddTextEntryByHash(GetHashKey(vehicle.spawnName), vehicle.label)
    end
end)

--[[Citizen.CreateThread(function()
    AddTextEntry('araçspawnkodu', 'Araç Adı')
    AddTextEntry('araçspawnkodu', 'Araç Adı')
    AddTextEntry('araçspawnkodu', 'Araç Adı')
    AddTextEntry('araçspawnkodu', 'Araç Adı')
end)--]]