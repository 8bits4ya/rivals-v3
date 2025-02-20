local Players = game:GetService("Players")
setclipboard("https://dsc.gg/get-8-bit")
local function setUnixTime()
    local unixTime = tick()
    getgenv().startTime = unixTime
end

setUnixTime()

if not getgenv().yetexecuted then
    getgenv().yetexecuted = true
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet("https://8bitsforya.vercel.app/api/scripts?script=rivalsv4.lua"))()
    end)

    if not success then
        function sendNotification(title, message, duration)
            game.StarterGui:SetCore("SendNotification", {
                Title = title or "Notification",
                Text = message or "No message provided.",
                Icon = "rbxassetid://135755849962682",
                Duration = duration or 3
            })
        end

        sendNotification("Error", "Script is paused..", 56)
		sendNotification("Info", "Script is online but cannot connect to server.", 56)
		wait(30)
        Players.LocalPlayer:Kick("Restart roblox and try again.")
    end
else
    function sendNotification(title, message, duration)
        game.StarterGui:SetCore("SendNotification", {
            Title = title or "Notification",
            Text = message or "burr.",
            Icon = "rbxassetid://116912659948477",
            Duration = duration or 3
        })
    end

    sendNotification("Notification", "Already executed...", 2)
    sendNotification("Notification", "Wait for it to load or exit game and execute.", 15)
end
