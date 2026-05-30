local prompt = script.Parent:WaitForChild("ProximityPrompt")

local function playerHasEquippedMop(player)
	local character = player.Character
	if not character then return false end

	local equippedTool = character:FindFirstChildOfClass("Tool")
	return equippedTool and equippedTool.Name == "Mop"
end

prompt.Triggered:Connect(function(player)
	if not playerHasEquippedMop(player) then
		return
	end
	script.Parent:Destroy()
end)
