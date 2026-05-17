if not script_key then
    game.Players.LocalPlayer:Kick("No Key")
    return
end

local Keys = {
    ["xQ92LmZaP81KdYtRwQeN7sUvBcXoM2Hp"] = 1779059200
}

local Expire = Keys[script_key]

if not Expire then
    game.Players.LocalPlayer:Kick("Invalid Key")
    return
end

if os.time() > Expire then
    game.Players.LocalPlayer:Kick("Expired Key")
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/NpazScripts/NpazHub/main/hub.lua"))()
