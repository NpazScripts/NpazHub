local ValidKeys = {
    ["BGCqXMUPoLGbzNkzoKhMdvWUUlfXJouQ"] = true
}

if not script_key then
    game.Players.LocalPlayer:Kick("No Key")
    return
end

if not ValidKeys[script_key] then
    game.Players.LocalPlayer:Kick("Invalid Key")
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/NpazScripts/NpazHub/main/hub.lua"))()
