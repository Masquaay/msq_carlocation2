ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent('buyBlista')
AddEventHandler('buyBlista', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = Config.PriceBlista
    if xPlayer.getMoney() >= Config.PriceBlista then
    xPlayer.removeMoney(price)
    xPlayer.spawnCar("blista")
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez pas assez d\'argent')
    end
end)

RegisterServerEvent('buyIssi2')
AddEventHandler('buyIssi2', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = Config.PriceIssi2
    if xPlayer.getMoney() >= Config.PriceIssi2 then
    xPlayer.removeMoney(price)
    xPlayer.spawnCar("Issi2")
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez pas assez d\'argent')
    end
end)

RegisterServerEvent('buyAsea')
AddEventHandler('buyAsea', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = Config.PriceAsea
    if xPlayer.getMoney() >= Config.PriceAsea then
    xPlayer.removeMoney(price)
    xPlayer.spawnCar("Asea")
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez pas assez d\'argent')
    end
end)

RegisterServerEvent('buFaggio')
AddEventHandler('buyFaggio', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = Config.PriceFaggio
    if xPlayer.getMoney() >= Config.PriceFaggio then
    xPlayer.removeMoney(price)
    xPlayer.spawnCar("Faggio3")
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez pas assez d\'argent')
    end
end)