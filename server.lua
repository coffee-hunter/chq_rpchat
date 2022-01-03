local QBCore = exports['qb-core']:GetCoreObject()

-- CHAT

QBCore.Commands.Add("ooc", "Out of character", {{name = "message", help = "Type message"}}, false, function(source, args)
    local player = QBCore.Functions.GetPlayer(source)
    local id = source
    local firstname = player.PlayerData.charinfo.firstname
    local lastname = player.PlayerData.charinfo.lastname

    local msg = table.concat(args, " ")

    TriggerClientEvent('chq_com:ooc', -1, player, id, firstname, lastname, msg)
end)

QBCore.Commands.Add("me", "Me chat", {{name = "message", help = "Type message"}}, false, function(source, args)
    local src = source

    local msg = table.concat(args, " ")

    TriggerClientEvent('chq_com:me', -1, source, msg)
end)