if not script_key then
    game.Players.LocalPlayer:Kick("No Key")
    return
end

local CorrectKey = "BGCqXMUPoLGbzNkzoKhMdvWUUlfXJouQ"

if script_key ~= CorrectKey then
    game.Players.LocalPlayer:Kick("Invalid Key")
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/NpazScripts/NpazHub/main/hub.lua"))()
