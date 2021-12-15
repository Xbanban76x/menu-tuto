ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--------- Menu -------

RMenu.Add('menu-tuto', 'main', RageUI.CreateMenu("Menu-Tuto", "Menu Interaction"))
RMenu.Add('menu-tuto', 'inventaire', RageUI.CreateSubMenu(RMenu:Get('menu-tuto', 'main'), "Inventaire", "Inventaire"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('menu-tuto', 'main'), true, true, true, function()

            RageUI.Separator("~g~Votre steam : ~b~"..GetPlayerName(PlayerId()))
            RageUI.Separator("~g~Votre ID : ~b~"..GetPlayerServerId(PlayerId()))

            RageUI.ButtonWithStyle("~b~Inventaire", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
            end, RMenu:Get('menu-tuto', 'inventaire'))

        end, function()
        end)
    
            RageUI.IsVisible(RMenu:Get('menu-tuto', 'inventaire'), true, true, true, function()

                RageUI.Separator("~r~↓ Votre inventaire : ↓")

            end, function()
            end)

            Citizen.Wait(0)
        end
    end)






Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 327) then
            RageUI.Visible(RMenu:Get('menu-tuto', 'main'), not RageUI.Visible(RMenu:Get('menu-tuto', 'main')))
        end
    end
end)
