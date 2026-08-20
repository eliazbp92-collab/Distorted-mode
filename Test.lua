local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function setupUI()
	local playerGui = LocalPlayer:WaitForChild("PlayerGui", 5)
	if not playerGui then return end

	local mainUI = playerGui:FindFirstChild("MainUI")
	if not mainUI then return end

	local jumpscareRush = mainUI:FindFirstChild("Jumpscare") and mainUI.Jumpscare:FindFirstChild("Jumpscare_Rush")
	if jumpscareRush then
		if jumpscareRush:FindFirstChild("ImageLabel") then
			jumpscareRush.ImageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0)
			jumpscareRush.ImageLabel.Image = "rbxassetid://108323297313724"
		end
		if jumpscareRush:FindFirstChild("ImageLabelBig") then
			jumpscareRush.ImageLabelBig.ImageColor3 = Color3.fromRGB(255, 0, 0)
			jumpscareRush.ImageLabelBig.Image = "rbxassetid://86965329839192"
		end
	end
end

local function processEntity(child)
	task.spawn(function()
		if child.Name == "AmbushMoving" then
			local rushNew = child:WaitForChild("RushNew", 3)
			local attachment = rushNew and rushNew:WaitForChild("Attachment", 3)
			local particle = attachment and attachment:WaitForChild("ParticleEmitter", 3)
			local playSound = rushNew:WaitForChild("PlaySound", 3)

			if particle then
				particle.Texture = "rbxassetid://12564461749"
				particle.Color = ColorSequence.new(Color3.fromRGB(128, 0, 128))
			end

		elseif child.Name == "RushMoving" then
			local rushNew = child:WaitForChild("RushNew", 3)
			if not rushNew then return end

			local attachment = rushNew:WaitForChild("Attachment", 3)
			local playSound = rushNew:WaitForChild("PlaySound", 3)

			if attachment then
				local blackTrail = attachment:WaitForChild("BlackTrail", 3)
				local particle = attachment:WaitForChild("ParticleEmitter", 3)

				if blackTrail then
					blackTrail.Texture = "rbxassetid://6641048749"
					blackTrail.Color = ColorSequence.new(Color3.fromRGB(128, 0, 128))
				end
				if particle then
					particle.Texture = "rbxassetid://99168883483281"
					particle.Rate = 55
					particle.Brightness = 1
					particle.Color = ColorSequence.new(Color3.fromRGB(128, 0, 128))
				end
			end

			if playSound then
				playSound.PlaybackSpeed = 0.75
				pcall(function()
					playSound.Footsteps = 0.50
				end)
			end
		end
	end)
end

setupUI()

for _, child in ipairs(workspace:GetChildren()) do
	processEntity(child)
end

workspace.ChildAdded:Connect(processEntity)
