--[[

  Vehicle Extra Command
  Coded by: nearbyplayer

--]]

TriggerEvent('es:addCommand', 'extra', function(source, args, user)
  local extraId = tonumber(args[2])
  local toggle = tonumber(args[3])
  if toggle == 1 then
    toggle = false
    TriggerClientEvent('car:vehicleExtras', source, extraId, toggle)
  elseif toggle == 0 then
    toggle = true
    TriggerClientEvent('car:vehicleExtras', source, extraId, toggle)
  end
end, {help = 'Vehicle Extras', params = {{name = 'id', help = 'Extra ID'}, {name = 'toggle', help = '0 (Off), 1 (On)'}}})
