local Players = game:GetService("Players")
setclipboard("https://dsc.gg/get-8-bit")

local function setUnixTime()
    local unixTime = tick()
    getgenv().startTime = unixTime
end

setUnixTime()

if not getgenv().yetexecuted then
    getgenv().yetexecuted = true

    local bindable = Instance.new("BindableFunction")
    function bindable.OnInvoke(buttonPressed)
        if buttonPressed == "FULL" then
            loadstring(game:HttpGet("https://8bitsforya.vercel.app/api/scripts?script=rivalsv4.lua"))()
        elseif buttonPressed == "Feather" then
            loadstring(game:HttpGet("https://8bitsforya.vercel.app/api/scripts?script=rivalsv4.lua"))()
        end
    end

    local success, errorMsg = pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Choose Script",
            Text = "Select FULL or Feather",
            Icon = "rbxassetid://135755849962682",
            Duration = 20,
            Callback = bindable,
            Button1 = "FULL",
            Button2 = "Feather"
        })
    end)

    if not success then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Script is paused..",
            Icon = "rbxassetid://135755849962682",
            Duration = 56
        })

        game.StarterGui:SetCore("SendNotification", {
            Title = "Info",
            Text = "Script is online but cannot connect to server.",
            Icon = "rbxassetid://135755849962682",
            Duration = 56
        })

        wait(30)
        Players.LocalPlayer:Kick("Restart Roblox and try again.")
    end
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = "Already executed...",
        Icon = "rbxassetid://116912659948477",
        Duration = 2
    })

    game.StarterGui:SetCore("SendNotification", {
        Title = "Notification",
        Text = "Wait for it to load or exit game and execute.",
        Icon = "rbxassetid://116912659948477",
        Duration = 15
    })
end
