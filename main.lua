if not getgenv().yetexecuted then
    getgenv().yetexecuted = true
    loadstring(game:HttpGet("https://get-eight-bits.greenskyisbad.workers.dev/?script=rivalsv3.lua"))()
else
    function sendNotification(title, message, duration)
        game.StarterGui:SetCore("SendNotification", {
            Title = title or "Notification",
            Text = message or "No message provided.",
            Icon = "rbxassetid://108093473459563",
            Duration = duration or 3
        })
    end

    sendNotification("Notification", "Already executed...", 2)
    sendNotification("Notification", "Wait for it to load or exit game and execute.", 5)
end
