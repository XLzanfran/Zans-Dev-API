--[[
	zan's Development API
	
	Use this API for scripting things. It makes things much more efficient, fun, and easy.
	
	created by zanfran
]]

--[[
	Basic All-Around Instructions
	
	Extra = a table
	Extra is a really easy way to define properties of a part.
	For example, if you were making a part, you would do this:
	Inst.Create("Part", game.Workspace, {})
	But, if you wanted to get even more detailed, you could change the {} to have things inside that modify what the part is like.
	Inst.Create("Part", game.Workspace, {Name = "Part", Anchored = true, Position = Vector3.new(0, 5, 0)
	Something like that.
	So, in conclusion
	Extra is used for creating a table of modifications to an object.
]]

--[[
	INSTANCE API
	
	Inst.Create(String InstanceType, userdata Parent, table Extra)
	EXAMPLE: Inst.Create("Part", game.Workspace, {Anchored = true})
	
	Inst.Modify(userdata Object, table Modification)
	EXAMPLE: Inst.Modify(MyPart, {Anchored = false, Position = Vector3.new(0, 5, 0)})
	
	Inst.Group(table Contents, userdata Parent, table Extra)
	EXAMPLE: Inst.Group({MyPart, MyPart1, MyPart2, MyPart3}, game.Workspace, {Name = "MyParts"})
]]

Inst = {}
Inst.Create = function(InstanceType, Parent, Extra)
	local CreatedObject = Instance.new(InstanceType, Parent)
	for i,v in pairs(Extra) do
		CreatedObject[i] = v
	end
end
Inst.Modify = function(Object, Modification)
	for i,v in pairs(Modification) do
		Object[i] = v
	end
end
Inst.Group = function(Contents, Parent, Extra)
	local Group = Instance.new("Model", Parent)
	for i,v in pairs(Contents) do
		v.Parent = Group
	end
	for i,v in pairs(Extra) do
		Group[i] = v
	end
end


Logic = {}
Logic.RGB = function(R, G, B)
	return Color3.new(R / 255, G / 255, B / 255)
end
Logic.GetPlayerGui = function(Player)
	return Player.PlayerGui
end



Gui = {}
Gui.CreateGui = function(GuiType, Parent, Extra)
	if GuiType:lower() == "screen" then
		local GUI = Inst.Create("ScreenGui", Parent, {})
		Inst.Modify(GUI, Extra)
		return GUI
	elseif GuiType:lower() == "surface" then
		local GUI = Inst.Create("SurfaceGui", Parent, {})
		Inst.Modify(GUI, Extra)
		return GUI
	else
		error("Invalid Type of GUI " .. GuiType)
	end
end
Gui.CreateTextLabel = function(Text, ud_p, ud_s, GuiParent, Extra)
	local Txt = Inst.Create("TextLabel", GuiParent, {Position = ud_p, Size = ud_s, Text = Text})
	Inst.Modify(Txt, Extra)
	return Txt
end
Gui.CreateFrame = function(ud_p, ud_s, GuiParent, Extra)
	local Frame = Inst.Create("Frame", GuiParent, {Position = ud_p, Size = ud_s})
	Inst.Modify(Frame, Extra)
	return Frame
end

















-- Put Script Down Here