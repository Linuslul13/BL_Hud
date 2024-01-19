ESX = exports['es_extended']:getSharedObject()

ESX.RegisterServerCallback('hud:getMoney', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        local money = xPlayer.getMoney() or 0
        local playerBank = xPlayer.getAccount('bank').money or 0
        local playerblackmoney = xPlayer.getAccount('black_money').money or 0
        local job = xPlayer.job and xPlayer.job.label or "Unbekannt"
        local jobgrade = xPlayer.job and xPlayer.job.grade or 0
        local jobrang = xPlayer.job and xPlayer.job.grade_label or "Unbekannt"
        local gehalt = xPlayer.job and xPlayer.job.grade_salary or 0

        cb(money, job, jobgrade, jobrang, playerblackmoney)
    else
    end
end)

ESX.RegisterServerCallback('Hud:playerid', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerid = GetPlayerName(playerId)
    cb(playerid)
end)




