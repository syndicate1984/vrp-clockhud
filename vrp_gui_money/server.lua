local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPnc = Proxy.getInterface("vRP_newcoin")

RegisterServerEvent("vRP_GUI:getHunger&Thirst")
AddEventHandler("vRP_GUI:getHunger&Thirst",function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	
	if user_id ~= nil and user_id ~= 0 then
		TriggerClientEvent("vRP_GUI:getHunger&Thirst",player,vRP.getHunger({user_id}),vRP.getThirst({user_id}))
		TriggerClientEvent("vRP_GUI:SetPMoney",player,vRP.getMoney({user_id}))
		TriggerClientEvent("vRP_GUI:SetAur",player,vRPnc.getBankMoney({user_id}))
	end
end)
