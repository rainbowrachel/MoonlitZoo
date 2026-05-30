Tool = script.Parent;
local enabled = true
local amount = 6 

function onActivated()
	if not enabled then return end

	enabled = false
	local handle = Tool:FindFirstChild("Handle")
	if handle == nil then enabled = true return end

	Tool.GripForward = Vector3.new(0, -.759, -.651)
	Tool.GripPos = Vector3.new(1.5, -.8, -0.2)
	Tool.GripRight = Vector3.new(1, 0, 0)
	Tool.GripUp = Vector3.new(0, .651, -.759)

	handle.EatSound.Volume = 1
	handle.EatSound:Play()

	for i = 1, 10 do handle.Mesh.Scale = handle.Mesh.Scale - Vector3.new(0, .03, 0) wait(.1) end

	Tool.GripForward = Vector3.new(0, -1, 0)
	Tool.GripPos = Vector3.new(0, 0, .5)
	Tool.GripRight = Vector3.new(1, -.85, 0)
	Tool.GripUp = Vector3.new(0, 0, -1)

	amount = amount - 1
	if amount < 1 then Tool.Parent = nil end
	wait(1)
	enabled = true
end

function mute() if Tool:FindFirstChild("Handle") ~= nil then Tool.Handle.EatSound.Volume = 0 end end

Tool.Activated:connect(onActivated)
Tool.Equipped:connect(mute)
Tool.Unequipped:connect(mute)