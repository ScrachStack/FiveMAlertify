-- RegisterCommand('shownotification', function(source, args, rawCommand)
--     local style = args[1] or 'default' -- Default style 
--     local title = args[2] or 'Notification'
--     local message = args[3] or 'This is a notification.'
--     local duration = tonumber(args[4]) or 5000 -- Default duration 

--     TriggerEvent('showNotification', style, title, message, duration)
-- end)

RegisterNetEvent('showNotification')
AddEventHandler('showNotification', function(style, title, message, duration)
    SendNUIMessage({
        type = 'showNotification',
        style = style,
        title = title,
        message = message,
        duration = duration
    })
end)
exports('showNotification', function(style, title, message, duration)
    TriggerEvent('showNotification', style, title, message, duration)
end)
