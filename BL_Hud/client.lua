ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded',function(xPlayer, isNew, skin)
    ESX.PlayerData = xPlayer
end)

Citizen.CreateThread(function()
    while true do 
        Wait(100)

        ESX.TriggerServerCallback('hud:getMoney', function(money, job, gehalt, jobgrade, playerblackmoney)


            SendNUIMessage({
                type = "all",
                money = "Bargeld: "..money .."$",
            })

            SendNUIMessage({
                type = "pool",
                job = job .." - " .. jobgrade,
            })

            SendNUIMessage({
                type = "black",
                playerblackmoney = "Schwarzgeld: " ..playerblackmoney.. "$",
            })

            SendNUIMessage({
                type = "id",
                playerid = "Deine ID: "..GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1)))
            })


end)
end
end)

print("---------------------")
print("BL Hud V1 | Gestartet")
print("Discord -> discord.gg/nYCvThHYyd")
print("---------------------")