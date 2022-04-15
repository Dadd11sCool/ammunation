RMenu.Add('Dadd1 1s Cool', 'main', RageUI.CreateMenu("Garage", "Menu Véhicule"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Dadd1 1s Cool', 'main'), true, true, true, function() 
            RageUI.Button("Ranger le véhicule", "Pour ranger le véhicule.", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
            if dist4 < 4 then
                ESX.ShowAdvancedNotification("Garage Ammunation", "La voiture est de retour.", "", "CHAR_AMMUNATION", 1)
                DeleteEntity(veh)
            end 
            end
            end)         
            RageUI.Button("Camion Ammunation", "Pour sortir un Véhicule", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
            if (Selected) then
            ESX.ShowAdvancedNotification("Garage Ammunation", "Le véhicule arrive !", "", "CHAR_AMMUNATION", 1) 
            Citizen.Wait(2000)   
            spawnuniCar("aboxville")
            ESX.ShowAdvancedNotification("Garage Ammunation", "Bonne route !", "", "CHAR_AMMUNATION", 1) 
            end
            end)

            RageUI.Button("Van Ammunation", "Pour sortir un Véhicule", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                ESX.ShowAdvancedNotification("Garage Ammunation", "Le véhicule arrive !", "", "CHAR_AMMUNATION", 1) 
                Citizen.Wait(2000)   
                spawnuniCar("aburrito")
                ESX.ShowAdvancedNotification("Garage Ammunation", "Bonne route !", "", "CHAR_AMMUNATION", 1) 
                end
                end)

                RageUI.Button("Camion Blindée", "Pour sortir un Véhicule", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    ESX.ShowAdvancedNotification("Garage Ammunation", "Le véhicule arrive !", "", "CHAR_AMMUNATION", 1) 
                    Citizen.Wait(2000)   
                    spawnuniCar("astockade")
                    ESX.ShowAdvancedNotification("Garage Ammunation", "Bonne route !", "", "CHAR_AMMUNATION", 1) 
                    end
                    end)
            

            
        end, function()
        end)
            Citizen.Wait(0)
        end
    end)

Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    

    
                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.garage.position.x, Config.pos.garage.position.y, Config.pos.garage.position.z)
                DrawMarker(20,  -8.79, -1112.91, 27.49+1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)
            if dist3 <= 3.0 then
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ammunation' then    
                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder au garage")
                    if IsControlJustPressed(1,51) then           
                        RageUI.Visible(RMenu:Get('Dadd1 1s Cool', 'main'), not RageUI.Visible(RMenu:Get('Dadd1 1s Cool', 'main')))
                    end   
                end
               end 
        end
end)

function spawnuniCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.pos.spawnvoiture.position.x, Config.pos.spawnvoiture.position.y, Config.pos.spawnvoiture.position.z, Config.pos.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "Ammunation"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1) 
end