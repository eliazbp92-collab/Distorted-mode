	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "TrollFace", -- Custom name of your entity
    Model = "rbxassetid://121808091891673", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Enabled/Disabled
        50, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
        90, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://0", -- Image1 url
            Image2 = "rbxassetid://0", -- Image2 url
            Shake = false,
            Sound1 = {
                103879029437685, -- SoundId
                { Volume = 0.9 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.9 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(100, 0, 100), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 2,
                Max = 4,
            },
        },
    },
    CustomDialog = {"Uhh...", "Alright."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end


entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
