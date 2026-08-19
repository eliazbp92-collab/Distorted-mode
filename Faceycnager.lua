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
