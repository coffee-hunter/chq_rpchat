# chq_rpchat
 
| INFO |
 
This resource is made for FiveM. It is an rpchat resource that includes /me and /ooc. These should work standalone but I have been using QBCore to develop this.

This is open source so do with it what you will :D

| Installation |

1. Place chq_rpchat in resource folder
2. Add start chq_rpchat to server.cfg

| OPTIONAL |

To disable the normal text chat without commands, you must go into your chat resource and comment out these line:

```
RegisterNUICallback('chatResult', function(data, cb)
  chatInputActive = false
  SetNuiFocus(false)

  if not data.canceled then
    local id = PlayerId()

    --deprecated
    local r, g, b = 0, 0x99, 255

    if data.message:sub(1, 1) == '/' then
      ExecuteCommand(data.message:sub(2))
    -- else
      -- TriggerServerEvent('_chat:messageEntered', GetPlayerName(id), { r, g, b }, data.message, data.mode)
    end
  end

  cb('ok')
end)
```


Made By: ColtenHQ
