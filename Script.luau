local ServerStorage = game:GetService("ServerStorage")

local mopTool = ServerStorage:WaitForChild("Mop")
local prompt = script.Parent:WaitForChild("ProximityPrompt")

prompt.Triggered:Connect(function(player)
	local backpack = player:WaitForChild("Backpack")

	if backpack:FindFirstChild("Mop") or (player.Character and player.Character:FindFirstChild("Mop")) then
		return
	end

	local clone = mopTool:Clone()
	clone.Parent = backpack
end)
