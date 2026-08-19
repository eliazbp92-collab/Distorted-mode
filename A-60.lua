	local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "TrollFace", -- Custom name of your entity
    Model = "rbxassetid://13949557886", -- Can be GitHub file or rbxassetid
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
--// ========================================== --
--//     FORCE-ACTIVATED FACE GLITCH SCRIPT     --
--// ========================================== --
local bGui = model:FindFirstChildWhichIsA("BillboardGui", true)
if bGui then
    task.spawn(function()
        local f1 = bGui:WaitForChild("face1", 5)
        local f2 = bGui:WaitForChild("face2", 5)
        local f3 = bGui:WaitForChild("face3", 5)
        local f4 = bGui:WaitForChild("face4", 5)
        local f5 = bGui:WaitForChild("face5", 5)
        local f6 = bGui:WaitForChild("face6", 5)
        
        if f1 and f2 and f3 and f4 and f5 and f6 then
            while model.Parent do
                f6.AnchorPoint = Vector2.new(0,0)
                f1.Visible = true
                f2.Visible = false
                f3.Visible = false
                f4.Visible = false
                f5.Visible = false
                f6.Visible = false
                
                task.wait(0.52)
                f2.Visible = true
                task.wait(0.35)
                f2.AnchorPoint = Vector2.new(0.05,0)
                task.wait(0.35)
                f1.Visible = false
                task.wait(0.35)
                f3.Visible = true
                f1.Visible = true
                f2.Visible = false
                f2.AnchorPoint = Vector2.new(0,0)
                task.wait(0.5)
                f1.Visible = false
                task.wait(0.31)
                f4.Visible = true
                task.wait(0.6)
                f3.AnchorPoint = Vector2.new(0,0.015)
                f4.AnchorPoint = Vector2.new(0.025,0)
                f2.AnchorPoint = Vector2.new(0.05,0)
                task.wait(0.38)
                f3.Visible = false
                task.wait(0.2)
                f3.AnchorPoint = Vector2.new(0,0)
                f4.AnchorPoint = Vector2.new(0,0)
                f2.AnchorPoint = Vector2.new(0,0)
                task.wait(0.23)
                f4.Visible = false
                f5.Visible = true
                f1.Visible = true
                task.wait(0.1)
                f5.AnchorPoint = Vector2.new(0, 0.079)
                f1.AnchorPoint = Vector2.new(0.035,0.015)
                task.wait(0.42)
                f5.AnchorPoint = Vector2.new(0,0)
                f1.AnchorPoint = Vector2.new(0,0)
                task.wait(0.42)
                f4.Visible = false
                f1.Visible = false
                task.wait(0.23)
                f6.Visible = true
                task.wait(0.52)
                f5.Visible = false
                f2.Visible = true
                f6.AnchorPoint = Vector2.new(0.055, 0.031)
                task.wait(0.56)
            end
        end
    end)
else
    warn("A-60 BillboardGui face container not found in asset tree")
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
