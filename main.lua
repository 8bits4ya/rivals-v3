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
        loadstring(game:HttpGet("https://get-eight-bits.greenskyisbad.workers.dev/?script=rivalsv3.lua"))()
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

        sendNotification("Error", "Server is updating..", 56)
		sendNotification("Info", "Currently you cant use 8BIT. For more info join discord. Link copied to clipboard.", 56)
		wait(2222)
        Players.LocalPlayer:Kick("Working on server, please be patient. After the server is online, the script will start working again.")
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
