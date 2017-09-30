--[[

  Vehicle Extra Command
  Coded by: nearbyplayer

--]]


RegisterNetEvent('car:vehicleExtras')
AddEventHandler('car:vehicleExtras', function(extraId, toggle)
  local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
  if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
    if GetPedInVehicleSeat(veh, -1) == GetPlayerPed(-1) then
      if DoesExtraExist(veh, extraId) then
        SetVehicleExtra(veh, extraId, toggle)
      end
    else
      TriggerEvent('chatMessage', "SYSTEM", {255, 0, 0}, "You must be in the drivers seat.")
    end
  else
    TriggerEvent('chatMessage', "SYSTEM", {255, 0, 0}, "You aren't in a vehicle.")
  end
end)