--#############################################|  MASQUAAY/MSQ  |####################################################
-- msq_carlocation2 create by Masquaay#0909

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
ESX = nil
--onmenu = false

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

dropoffStation = {
    {x = -903.59, y = -2310.70, z = 5.70},
    {x = 241.49, y = -756.84, z = 29.82},
    {x = -914.16, y = -160.85, z = 40.88},
    {x = -1179.45, y = -731.2, z = 19.5},
    {x = -791.74, y = 332.14, z = 84.7},
    {x = 604.92, y = 105.35, z = 91.89},
    {x = 394.15, y = -1660.44, z = 26.31},
    {x = 1459.65, y = 3735.7, z = 32.51},
    {x = 19.39, y = 6334.73, z = 30.24},
}


_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("","Location", nil, nil, "shopui_title_graphics_michael", "shopui_title_graphics_michael")
_menuPool:Add(mainMenu)

-- Fonction achat

function AddCarMenu(menu)
    local voituremenu = _menuPool:AddSubMenu(menu, "Voitures", "", "", nil, nil)
    voituremenu.Item:RightLabel(">")


local blista = NativeUI.CreateItem("Blista", "")
voituremenu.SubMenu:AddItem(blista)
blista:SetRightBadge(BadgeStyle.Car)

local StatisticsPanel = NativeUI.CreateStatisticsPanel()
    
    StatisticsPanel:AddStatistics("Degâts") -- 1 Statistics Item
    StatisticsPanel:SetPercentage(1, 20)
    
    StatisticsPanel:AddStatistics("Rapidité") -- 2 Statistics Item
    StatisticsPanel:SetPercentage(2, 30)
    
    StatisticsPanel:AddStatistics("Présision") -- 3 Statistics Item
    StatisticsPanel:SetPercentage(3, 40)
        
    StatisticsPanel:AddStatistics("Porté") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(4, 20)
            
    StatisticsPanel:AddStatistics("Chargeur") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(5, 00)

    blista:AddPanel(StatisticsPanel)


local issi2 = NativeUI.CreateItem("Issi", "")
voituremenu.SubMenu:AddItem(issi2)
issi2:SetRightBadge(BadgeStyle.Car)

local StatisticsPanel = NativeUI.CreateStatisticsPanel()
    
    StatisticsPanel:AddStatistics("Degâts") -- 1 Statistics Item
    StatisticsPanel:SetPercentage(1, 20)
    
    StatisticsPanel:AddStatistics("Rapidité") -- 2 Statistics Item
    StatisticsPanel:SetPercentage(2, 30)
    
    StatisticsPanel:AddStatistics("Présision") -- 3 Statistics Item
    StatisticsPanel:SetPercentage(3, 40)
        
    StatisticsPanel:AddStatistics("Porté") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(4, 20)
            
    StatisticsPanel:AddStatistics("Chargeur") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(5, 00)

    issi2:AddPanel(StatisticsPanel)


local asea = NativeUI.CreateItem("Asea", "")
voituremenu.SubMenu:AddItem(asea)
asea:SetRightBadge(BadgeStyle.Car)

local StatisticsPanel = NativeUI.CreateStatisticsPanel()
    
    StatisticsPanel:AddStatistics("Degâts") -- 1 Statistics Item
    StatisticsPanel:SetPercentage(1, 20)
    
    StatisticsPanel:AddStatistics("Rapidité") -- 2 Statistics Item
    StatisticsPanel:SetPercentage(2, 30)
    
    StatisticsPanel:AddStatistics("Présision") -- 3 Statistics Item
    StatisticsPanel:SetPercentage(3, 40)
        
    StatisticsPanel:AddStatistics("Porté") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(4, 20)
            
    StatisticsPanel:AddStatistics("Chargeur") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(5, 00)

    asea:AddPanel(StatisticsPanel)

    local motomenu = _menuPool:AddSubMenu(menu, "Moto", "", "", nil, nil)
    motomenu.Item:RightLabel(">")

local faggio = NativeUI.CreateItem("Scooter", "")
motomenu.SubMenu:AddItem(faggio)
faggio:SetRightBadge(BadgeStyle.Car)

local StatisticsPanel = NativeUI.CreateStatisticsPanel()
    
    StatisticsPanel:AddStatistics("Degâts") -- 1 Statistics Item
    StatisticsPanel:SetPercentage(1, 20)
    
    StatisticsPanel:AddStatistics("Rapidité") -- 2 Statistics Item
    StatisticsPanel:SetPercentage(2, 30)
    
    StatisticsPanel:AddStatistics("Présision") -- 3 Statistics Item
    StatisticsPanel:SetPercentage(3, 40)
        
    StatisticsPanel:AddStatistics("Porté") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(4, 20)
            
    StatisticsPanel:AddStatistics("Chargeur") -- 4 Statistics Item
    StatisticsPanel:SetPercentage(5, 00)

    faggio:AddPanel(StatisticsPanel)


    motomenu.SubMenu.OnItemSelect = function(_, item ,_)
        if item == faggio then
            TriggerServerEvent('buyFaggio')
            ESX.ShowAdvancedNotification("Location de véhicule", "Votre véhicule est en ~b~route~s~", "", "CHAR_BIKESITE", 1)
            Citizen.Wait(10000)
            spawnCar("Faggio3") 
            ESX.ShowAdvancedNotification("Location de véhicule", "Voilà votre ~b~véhicule~s~", "", "CHAR_BIKESITE", 1)
            end
        end
    
    voituremenu.SubMenu.OnItemSelect = function(_, item ,_)
        if item == blista then
            TriggerServerEvent('buyBlista')
            ESX.ShowAdvancedNotification("Location de véhicule", "Votre véhicule est en ~b~route~s~", "", "CHAR_BIKESITE", 1)
            Citizen.Wait(10000)
            spawnCar("Blista") 
            ESX.ShowAdvancedNotification("Location de véhicule", "Voilà votre ~b~véhicule~s~", "", "CHAR_BIKESITE", 1)
            end
        
    
        voituremenu.SubMenu.OnItemSelect = function(_, item ,_)
            if item == issi2 then
                TriggerServerEvent('buyIssi2')
                ESX.ShowAdvancedNotification("Location de véhicule", "Votre véhicule est en ~b~route~s~", "", "CHAR_CARSITE", 1)
                Citizen.Wait(10000)
                spawnCar("Issi2") 
                ESX.ShowAdvancedNotification("Location de véhicule", "Voilà votre ~b~véhicule~s~", "", "CHAR_CARSITE", 1)
                end
            end
        end
    end

       -- voituremenu.SubMenu.OnItemSelect = function(_, item ,_)
            --if item == asea then
               -- TriggerServerEvent('buyasea')
               -- ESX.ShowAdvancedNotification("Location de véhicule", "Votre véhicule est en ~b~route~s~", "", "CHAR_CARSITE", 1)
               -- Citizen.Wait(10000)
               -- spawnCar("Asea") 
              --  ESX.ShowAdvancedNotification("Location de véhicule", "Voilà votre ~b~véhicule~s~", "", "CHAR_CARSITE", 1)
               -- end
            --end
        --end
        
        
      

AddCarMenu(mainMenu)
_menuPool:RefreshIndex()
-- Blips

function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, -1043.179, -2724.659, 20.080, 239.265, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    SetVehicleNumberPlateText(vehicle, "LOC")
end

local masquaay = {
    {x = -1034.710,y = -2733.050,z = 20.169}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(masquaay) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, masquaay[k].x, masquaay[k].y, masquaay[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parlez avec ~b~Adam")
				if IsControlJustPressed(1,51) then 
                    mainMenu:Visible(not mainMenu:Visible())
				end
            end
        end
    end
end)


-- Marker and help text


local blips = {
    {title="Location", colour=75, id=313, x = 22.647, y = -1105.554, z = 28.797},

}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)


-- texte

local v1 = vector3(-1034.710, -2733.050, 21.169)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

local distance = 20

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance then
            Draw3DText(v1.x,v1.y,v1.z, "Adam")
		end
	end
end)

-- ped

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_siemonyetarian")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
	ped = CreatePed("PED_TYPE_CIVMALE", "cs_siemonyetarian", -1034.710, -2733.050, 19.169, 332.956, true, true) 
	SetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, true)
end)
