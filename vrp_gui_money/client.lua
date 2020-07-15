Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1000)
    TriggerServerEvent("vRP_GUI:getHunger&Thirst")
    TriggerServerEvent("vRP_GUI:SetAur")
    -- TriggerServerEvent("vRP_GUI:getGifts")
    -- TriggerEvent("vRP_GUI:setFata")
  end
end)

RegisterNetEvent("vRP_GUI:getHunger&Thirst")
AddEventHandler("vRP_GUI:getHunger&Thirst",function(hunger,thirst)
  local viata = GetEntityHealth(GetPlayerPed(-1)) - 100
 local armor = GetPedArmour(ped)
  SendNUIMessage({thirst = 100-thirst,hunger = 100-hunger,viata=viata,armor = armor,survival = true})
end)

RegisterNetEvent("vRP_GUI:SetPMoney")
AddEventHandler("vRP_GUI:SetPMoney",function(value)
  value = format(value)
  SendNUIMessage({pmoney = value})
end)

RegisterNetEvent("vRP_GUI:SetAur")
AddEventHandler("vRP_GUI:SetAur",function(value)
  value = format(value)
  SendNUIMessage({aur = value})
end)

-- RegisterNetEvent("vRP_GUI:SetGifts")
-- AddEventHandler("vRP_GUI:SetGifts",function(value)
--   value = format(value)
--   SendNUIMessage({gifts = value})
-- end)

function format(amount)
  local formatted = amount
  while true do  
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
      break
    end
  end
  return formatted
end

-- function format(value)
--   if value >= 1000000000 then
--     return tostring(math.floor(round(value%1000000000000)/1000000000*100)/100).." B"

--   elseif value >= 1000000 then
--     return tostring(math.floor(round(value%1000000000)/1000000*100)/100).." M"

--   elseif value >= 1000 then
--     return tostring(math.floor(round(value%1000000)/1000*100)/100).." K"
--   elseif value == 0 or value == nil then
--     return "0"
--   else
--     return value
--   end
-- end

function round(n)
  return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end
