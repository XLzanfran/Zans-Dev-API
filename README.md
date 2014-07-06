Zans-Dev-API
============

A RBX.Lua development API


The current stable version consists of 3 different built-in APIs.
Inst, Logic, and Gui.


INSTRUCTIONS FOR INST
Inst.Create = Create a new instance
Inst.Create(InstanceType, Parent, Extra)
Example: Inst.Create("Part", game.Workspace, {Anchored = true, CFrame = CFrame.new(0, 5, 0)
Returns: Instance, InstanceType

Inst.Modify = Modify an existing instance
Inst.Modify(Object, Modification)
Example: Inst.Modify(MyPart, {Anchored = false, FormFactor = "Custom", Size = Vector3.new(1, 1, 1)})
Returns: None

Inst.Group = Create a group
Inst.Group(Contents, Parent, Extra)
Inst.Group({MyPart, MyPart2, MyPart3}, game.Workspace, {Name = "MyModel"})
Returns: Instance, Model


INSTRUCTIONS FOR LOGIC API
Logic.RGB = Convert RGB to C3
Logic.RGB(R, G, B)
Example: Logic.RGB(0, 180, 255)
Returns: Color3

Logic.GetPlayerGui = Get a player's PlayerGui
Logic.GetPlayerGui(Player)
Example: Logic.GetPlayerGui(game.Players.Player)
Returns: Instance, PlayerGui


INSTRUCTIONS FOR GUI API
Gui.CreateGui = Create a gui
Gui.CreateGui(GuiType, Parent, Extra)
Example: Gui.CreateGui("screen" (could be "screen" or "surface"), Logic.GetPlayerGui(Player), {})
Returns: Instance, ScreenGui/SurfaceGui

Gui.CreateTextLabel = Create a text label
Gui.CreateTextLabel(Text, Position, Size, Parent, Extra)
Example: Gui.CreateTextLabel("Hello World", UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), MyScreenGui, {})
Returns: Instance, TextLabel

Gui.CreateFrame = Create a frame
Gui.CreateFrame(Position, Size, Parent, Extra)
Example: Gui.CreateFrame(UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), MyScreenGui, {})
Returns: Instance, Frame



Please write your script at the end of this API.

Thank you for using zanfran's Development API. Enjoy!

