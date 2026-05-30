--[[~-Fixico-~]]--
print("Fixico's Scripts")
local isOn = true

function on()
 isOn = true
 script.Parent.Transparency = 0 
 script.Parent.CanCollide = true 
end

function off()
 isOn = false
 script.Parent.Transparency = .5 
 script.Parent.CanCollide = true 
end

function onClicked()
 
 if isOn == true then off() else on() end

end

script.Parent.ClickDetector.MouseClick:connect(onClicked)

on()
