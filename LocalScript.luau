

local DialogueFrame = script.Parent:WaitForChild("DialogueFrame")
local Event = DialogueFrame:WaitForChild("LocalScript"):WaitForChild("Event")
local InCutscene = false
local function changeFace(newID)
	local faces = game.Workspace:FindFirstChild("Walter")
	if faces and faces:FindFirstChild("Head") then
		local face = faces.Head:FindFirstChild("face")
		if face then
			face.Texture = "rbxassetid://" .. newID
		end
	end
end

wait(game:IsLoaded())

game.Workspace:WaitForChild("CutScenePart1").Touched:Connect(function(touchpart)
	local CutScenePart = game.Workspace.CutScenePart1
	if InCutscene == true or touchpart.Parent.Name ~= game.Players.LocalPlayer.Name then return end
	InCutscene = true
	
	-------------------------------------------------------------- Dialogue
	Event:Fire("I'm Walter, the director of the Apex Ecological Park, though frequently nicknamed the Moonlit Zoo", CutScenePart)
	wait(7)
	changeFace(16856582275)
	Event:Fire("I'm surprised to see someone took up the offer...", CutScenePart)
	wait(5)
	changeFace(139636567)
	Event:Fire("Well, I'll walk you through what you have to do everyday", CutScenePart)
	wait(5)
	
	-------------------------------------------------------------- Dialogue
	
	InCutscene = false
	Event:Fire("Start off with the morning shift with cleaning up the zoo", CutScenePart)
	wait(5)
	Event:Fire("The cleaning stuff are with John over there")
	wait(3)
	DialogueFrame.Visible = false
end)




