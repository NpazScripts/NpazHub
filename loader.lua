if not script_key then
    game.Players.LocalPlayer:Kick("No Key")
    return
end

local Keys = {
    ["xQ92LmZaP81KdYtRwQeN7sUvBcXoM2Hp"] = {
        expire = 1779059200,
        lifetime = false
    },

    ["LIFETIME-KEY-123"] = {
        expire = math.huge,
        lifetime = true
    }
}

local data = Keys[script_key]

if not data then
    game.Players.LocalPlayer:Kick("Invalid Key")
    return
end

if not data.lifetime then
    if os.time() > data.expire then
        game.Players.LocalPlayer:Kick("Expired Key")
        return
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/NpazScripts/NpazHub/main/hub.lua"))()
