local Settings1 = Instance.new("Frame")
local Collide = Instance.new("TextButton")
local CombatContainer = Instance.new("Frame")
local VisualsContainer = Instance.new("Frame")
local MiscContainer = Instance.new("Frame")
local SettingsContainer = Instance.new("Frame")
local Lib = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Back = Instance.new("Frame")
local Tabs = Instance.new("Frame")
local Combat = Instance.new("Frame")
local CombatButton = Instance.new("TextButton")
local CombatTitle = Instance.new("TextLabel")
local Visuals = Instance.new("Frame")
local VisualButton = Instance.new("TextButton")
local VisualTitle = Instance.new("TextLabel")
local Misc = Instance.new("Frame")
local MiscButton = Instance.new("TextButton")
local MiscTitle = Instance.new("TextLabel")
local Hitbox = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Slider = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local SlidePart = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local Other = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local Longneck = Instance.new("TextButton")
local TextLabel_4 = Instance.new("TextLabel")
local Keybind = Instance.new("TextButton")
local Spread = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local SlidePart_2 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local Silent = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local Recoil = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local SlidePart_3 = Instance.new("Frame")
local TextLabel_9 = Instance.new("TextLabel")
local VisualOther = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local Sch = Instance.new("TextButton")
local CrossEnab = Instance.new("TextButton")
local TextLabel_10 = Instance.new("TextLabel")
local Pulse = Instance.new("TextButton")
local TextLabel_11 = Instance.new("TextLabel")
local Ambient = Instance.new("TextButton")
local Esp = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local Distance = Instance.new("TextButton")
local TextLabel_12 = Instance.new("TextLabel")
local Box = Instance.new("TextButton")
local TextLabel_13 = Instance.new("TextLabel")
local Weapon = Instance.new("TextButton")
local TextLabel_14 = Instance.new("TextLabel")
local Local = Instance.new("Frame")
local Title_5 = Instance.new("TextLabel")
local Xray = Instance.new("TextButton")
local TextLabel_15 = Instance.new("TextLabel")
local Keybind_2 = Instance.new("TextButton")
local Slider_2 = Instance.new("Frame")
local TextLabel_16 = Instance.new("TextLabel")
local SlidePart_4 = Instance.new("Frame")
local TextLabel_17 = Instance.new("TextLabel")
local Atv = Instance.new("TextButton")
local TextLabel_18 = Instance.new("TextLabel")
local Keybind_3 = Instance.new("TextButton")
local SliderAtv = Instance.new("Frame")
local TextLabel_19 = Instance.new("TextLabel")
local SlidePart_5 = Instance.new("Frame")
local TextLabel_20 = Instance.new("TextLabel")
local TextLabel_21 = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local SettingsTitle = Instance.new("TextLabel")
local Keybind_4 = Instance.new("TextButton")
local Title_6 = Instance.new("TextLabel")
local Title_7 = Instance.new("TextLabel")
local SettingsButton = Instance.new("TextButton")
local ToggleButton = Instance.new("TextButton")


Lib.Name = "Lib"
Lib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Lib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Lib
Main.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.033, 0, 0.036, 0)
Main.Size = UDim2.new(0, 662, 0, 335)

Back.Name = "Back"
Back.Parent = Main
Back.BackgroundColor3 = Color3.new(0, 0, 0)
Back.BorderColor3 = Color3.new(0, 0, 0)
Back.BorderSizePixel = 0
Back.Position = UDim2.new(0.013, 0, 0.063, 0)
Back.Size = UDim2.new(0, 645, 0, 309)

Tabs.Name = "Tabs"
Tabs.Parent = Back
Tabs.BackgroundColor3 = Color3.new(0.043, 0.043, 0.043)
Tabs.BorderColor3 = Color3.new(0.133, 0.133, 0.133)
Tabs.Position = UDim2.new(0.004, 0, 0, 0)
Tabs.Size = UDim2.new(0, 639, 0, 51)

Combat.Name = "Combat"
Combat.Parent = Tabs
Combat.BackgroundColor3 = Color3.new(0.133, 0.133, 0.133)
Combat.BorderColor3 = Color3.new(0.188, 0.188, 0.188)
Combat.Size = UDim2.new(0, 153, 0, 50)

CombatButton.Name = "CombatButton"
CombatButton.Parent = Combat
CombatButton.BackgroundTransparency = 1
CombatButton.Size = UDim2.new(1, 0, 1, 0)
CombatButton.Text = ""

CombatTitle.Name = "CombatTitle"
CombatTitle.Parent = Combat
CombatTitle.BackgroundColor3 = Color3.new(1, 1, 1)
CombatTitle.BackgroundTransparency = 1
CombatTitle.BorderColor3 = Color3.new(0, 0, 0)
CombatTitle.BorderSizePixel = 0
CombatTitle.Position = UDim2.new(0.045, 0, 0, 0)
CombatTitle.Size = UDim2.new(0, 139, 0, 50)
CombatTitle.Font = Enum.Font.Arcade
CombatTitle.Text = "Combat"
CombatTitle.TextColor3 = Color3.new(0.423, 0.423, 0.423)
CombatTitle.TextSize = 16

Hitbox.Name = "Hitbox"
Hitbox.Parent = CombatContainer
Hitbox.BackgroundColor3 = Color3.new(0, 0, 0)
Hitbox.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Hitbox.BorderSizePixel = 2
Hitbox.Position = UDim2.new(0.02, 0, 0, 0)
Hitbox.Size = UDim2.new(0, 299, 0, 246)

Title.Name = "Title"
Title.Parent = CombatContainer
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.10468225, 0, -0.0569105707, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.Arcade
Title.Text = "Hitbox"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 18

Toggle.Name = "Toggle"
Toggle.Parent = Hitbox
Toggle.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Toggle.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Toggle.Position = UDim2.new(0.020066889, 0, 0.146341458, 0)
Toggle.Size = UDim2.new(0, 15, 0, 15)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = " "
Toggle.TextColor3 = Color3.new(0, 0, 0)
Toggle.TextSize = 14

TextLabel.Parent = Toggle
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-1.73333335, 0, -1.20000005, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Enable Hitbox"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14

Collide.Name = "Collide"
Collide.Parent = Hitbox
Collide.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Collide.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Collide.Position = UDim2.new(0.020066889, 0, 0.256097555, 0)
Collide.Size = UDim2.new(0, 15, 0, 15)
Collide.Font = Enum.Font.SourceSans
Collide.Text = " "
Collide.TextColor3 = Color3.new(0, 0, 0)
Collide.TextSize = 14

local CanCollideLabel = Instance.new("TextLabel")
CanCollideLabel.Parent = Hitbox  
CanCollideLabel.BackgroundColor3 = Color3.new(1, 1, 1)
CanCollideLabel.BackgroundTransparency = 1
CanCollideLabel.BorderColor3 = Color3.new(0, 0, 0)
CanCollideLabel.BorderSizePixel = 0
CanCollideLabel.Position = UDim2.new(0.1, 2, 0.256097555, 0) 
CanCollideLabel.Size = UDim2.new(0, 100, 0, 15) 
CanCollideLabel.Font = Enum.Font.Arcade
CanCollideLabel.Text = "Can Collide"
CanCollideLabel.TextColor3 = Color3.new(1, 1, 1)
CanCollideLabel.TextSize = 14

Slider.Name = "Slider"
Slider.Parent = Hitbox
Slider.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Slider.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Slider.Position = UDim2.new(0.0200669151, 0, 0.430894315, 0)
Slider.Size = UDim2.new(0, 210, 0, 15)

TextLabel_2.Parent = Slider
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.392857134, 0, -2.33333325, 0)
TextLabel_2.Size = UDim2.new(0, 240, 0, 50)
TextLabel_2.Font = Enum.Font.Arcade
TextLabel_2.Text = "HBE Size"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14

SlidePart.Name = "SlidePart"
SlidePart.Parent = Slider
SlidePart.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
SlidePart.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
SlidePart.Size = UDim2.new(0, 0, 0, 15)

TextLabel_3.Parent = Slider
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 0, -1.20000005, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.Arcade
TextLabel_3.Text = "Value"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 14

Other.Name = "Other"
Other.Parent = CombatContainer
Other.BackgroundColor3 = Color3.new(0, 0, 0)
Other.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Other.BorderSizePixel = 2
Other.Position = UDim2.new(0.52, 0, 0, 0)
Other.Size = UDim2.new(0, 299, 0, 246)

Title_2.Name = "Title"
Title_2.Parent = Other
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.BorderColor3 = Color3.new(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0.140468225, 0, -0.0569105707, 0)
Title_2.Size = UDim2.new(0, 200, 0, 50)
Title_2.Font = Enum.Font.Arcade
Title_2.Text = "Other"
Title_2.TextColor3 = Color3.new(1, 1, 1)
Title_2.TextSize = 18

Longneck.Name = "Longneck"
Longneck.Parent = Other
Longneck.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Longneck.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Longneck.Position = UDim2.new(0.020066889, 0, 0.146341458, 0)
Longneck.Size = UDim2.new(0, 15, 0, 15)
Longneck.Font = Enum.Font.SourceSans
Longneck.Text = " "
Longneck.TextColor3 = Color3.new(0, 0, 0)
Longneck.TextSize = 14

TextLabel_4.Parent = Longneck
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(-2.86666656, 0, -1.20000005, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.Arcade
TextLabel_4.Text = "Longneck"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 14

Keybind.Name = "Keybind"
Keybind.Parent = Longneck
Keybind.BackgroundColor3 = Color3.new(0, 0, 0)
Keybind.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Keybind.Position = UDim2.new(16.2666664, 0, -0.0666666701, 0)
Keybind.Size = UDim2.new(0, 43, 0, 15)
Keybind.Font = Enum.Font.SourceSans
Keybind.Text = "..."
Keybind.TextColor3 = Color3.new(1, 1, 1)
Keybind.TextSize = 14

Spread.Name = "Spread"
Spread.Parent = Other
Spread.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Spread.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Spread.Position = UDim2.new(0.020066889, 0, 0.329268306, 0)
Spread.Size = UDim2.new(0, 210, 0, 15)

TextLabel_5.Parent = Spread
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(-0.43095237, 0, -2.33333325, 0)
TextLabel_5.Size = UDim2.new(0, 240, 0, 50)
TextLabel_5.Font = Enum.Font.Arcade
TextLabel_5.Text = "Spread"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextSize = 14

SlidePart_2.Name = "SlidePart"
SlidePart_2.Parent = Spread
SlidePart_2.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
SlidePart_2.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
SlidePart_2.Size = UDim2.new(0, 0, 0, 15)

TextLabel_6.Parent = Spread
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.10952381, 0, -1.33333337, 0)
TextLabel_6.Size = UDim2.new(0, 164, 0, 50)
TextLabel_6.Font = Enum.Font.Arcade
TextLabel_6.Text = "Value"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextSize = 14

Silent.Name = "Silent"
Silent.Parent = Other
Silent.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Silent.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Silent.Position = UDim2.new(0.020066889, 0, 0.589430869, 0)
Silent.Size = UDim2.new(0, 15, 0, 15)
Silent.Font = Enum.Font.SourceSans
Silent.Text = " "
Silent.TextColor3 = Color3.new(0, 0, 0)
Silent.TextSize = 14

TextLabel_7.Parent = Silent
TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(2.4000001, 0, -1.33333337, 0)
TextLabel_7.Size = UDim2.new(0, 58, 0, 50)
TextLabel_7.Font = Enum.Font.Arcade
TextLabel_7.Text = "Silent Aim"
TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
TextLabel_7.TextSize = 14

Recoil.Name = "Recoil"
Recoil.Parent = Other
Recoil.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Recoil.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Recoil.Position = UDim2.new(0.020066889, 0, 0.467479676, 0)
Recoil.Size = UDim2.new(0, 210, 0, 15)

TextLabel_8.Parent = Recoil
TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(-0.43095237, 0, -2.33333325, 0)
TextLabel_8.Size = UDim2.new(0, 240, 0, 50)
TextLabel_8.Font = Enum.Font.Arcade
TextLabel_8.Text = "Recoil"
TextLabel_8.TextColor3 = Color3.new(1, 1, 1)
TextLabel_8.TextSize = 14

SlidePart_3.Name = "SlidePart"
SlidePart_3.Parent = Recoil
SlidePart_3.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
SlidePart_3.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
SlidePart_3.Size = UDim2.new(0, 0, 0, 15)

TextLabel_9.Parent = Recoil
TextLabel_9.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_9.BackgroundTransparency = 1
TextLabel_9.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.10952381, 0, -1.33333337, 0)
TextLabel_9.Size = UDim2.new(0, 164, 0, 50)
TextLabel_9.Font = Enum.Font.Arcade
TextLabel_9.Text = "Value"
TextLabel_9.TextColor3 = Color3.new(1, 1, 1)
TextLabel_9.TextSize = 14

Visuals.Name = "Visuals"
Visuals.Parent = Tabs
Visuals.BackgroundColor3 = Color3.new(0.133, 0.133, 0.133)
Visuals.BorderColor3 = Color3.new(0.188, 0.188, 0.188)
Visuals.Position = UDim2.new(0.239, 0, 0, 0)
Visuals.Size = UDim2.new(0, 153, 0, 50)

VisualButton.Name = "VisualButton"
VisualButton.Parent = Visuals
VisualButton.BackgroundTransparency = 1
VisualButton.Size = UDim2.new(1, 0, 1, 0)
VisualButton.Text = ""

VisualTitle.Name = "VisualTitle"
VisualTitle.Parent = Visuals
VisualTitle.BackgroundColor3 = Color3.new(1, 1, 1)
VisualTitle.BackgroundTransparency = 1
VisualTitle.BorderColor3 = Color3.new(0, 0, 0)
VisualTitle.BorderSizePixel = 0
VisualTitle.Position = UDim2.new(0.045, 0, 0, 0)
VisualTitle.Size = UDim2.new(0, 139, 0, 50)
VisualTitle.Font = Enum.Font.Arcade
VisualTitle.Text = "Visual"
VisualTitle.TextColor3 = Color3.new(0.423, 0.423, 0.423)
VisualTitle.TextSize = 16

VisualOther.Name = "VisualOther"
VisualOther.Parent = VisualsContainer
VisualOther.BackgroundColor3 = Color3.new(0, 0, 0)
VisualOther.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
VisualOther.BorderSizePixel = 2
VisualOther.Position = UDim2.new(0.52, 0, 0, 0)
VisualOther.Size = UDim2.new(0, 299, 0, 246)

Title_3.Name = "Title"
Title_3.Parent = VisualOther
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.BorderColor3 = Color3.new(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0.127090305, 0, -0.0569105707, 0)
Title_3.Size = UDim2.new(0, 200, 0, 50)
Title_3.Font = Enum.Font.Arcade
Title_3.Text = "Other"
Title_3.TextColor3 = Color3.new(1, 1, 1)
Title_3.TextSize = 18

Sch.Name = "Sch"
Sch.Parent = VisualOther
Sch.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Sch.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Sch.Position = UDim2.new(0.0367892981, 0, 0.390243888, 0)
Sch.Size = UDim2.new(0, 94, 0, 25)
Sch.Font = Enum.Font.Arcade
Sch.Text = "Skinchanger"
Sch.TextColor3 = Color3.new(1, 1, 1)
Sch.TextSize = 12
Sch.TextStrokeTransparency = 0

CrossEnab.Name = "CrossEnab"
CrossEnab.Parent = VisualOther
CrossEnab.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
CrossEnab.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
CrossEnab.Position = UDim2.new(0.0383678414, 0, 0.142747954, 0)
CrossEnab.Size = UDim2.new(0, 15, 0, 15)
CrossEnab.Font = Enum.Font.SourceSans
CrossEnab.Text = " "
CrossEnab.TextColor3 = Color3.new(0, 0, 0)
CrossEnab.TextSize = 14

TextLabel_10.Parent = CrossEnab
TextLabel_10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_10.BackgroundTransparency = 1
TextLabel_10.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(3.5333333, 0, -0.666666687, 0)
TextLabel_10.Size = UDim2.new(0, 79, 0, 34)
TextLabel_10.Font = Enum.Font.Arcade
TextLabel_10.Text = "Enable Crosshair"
TextLabel_10.TextColor3 = Color3.new(1, 1, 1)
TextLabel_10.TextSize = 14

Pulse.Name = "Pulse"
Pulse.Parent = VisualOther
Pulse.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Pulse.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Pulse.Position = UDim2.new(0.0383678414, 0, 0.240308926, 0)
Pulse.Size = UDim2.new(0, 15, 0, 15)
Pulse.Font = Enum.Font.SourceSans
Pulse.Text = " "
Pulse.TextColor3 = Color3.new(0, 0, 0)
Pulse.TextSize = 14

TextLabel_11.Parent = Pulse
TextLabel_11.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_11.BackgroundTransparency = 1
TextLabel_11.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0, 0, -0.666666687, 0)
TextLabel_11.Size = UDim2.new(0, 94, 0, 31)
TextLabel_11.Font = Enum.Font.Arcade
TextLabel_11.Text = "Pulse"
TextLabel_11.TextColor3 = Color3.new(1, 1, 1)
TextLabel_11.TextSize = 14

Ambient.Name = "Ambient"
Ambient.Parent = VisualOther
Ambient.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Ambient.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Ambient.Position = UDim2.new(0.0367892981, 0, 0.528455257, 0)
Ambient.Size = UDim2.new(0, 94, 0, 25)
Ambient.Font = Enum.Font.Arcade
Ambient.Text = "Ambient"
Ambient.TextColor3 = Color3.new(1, 1, 1)
Ambient.TextSize = 12
Ambient.TextStrokeTransparency = 0

Esp.Name = "Esp"
Esp.Parent = VisualsContainer
Esp.BackgroundColor3 = Color3.new(0, 0, 0)
Esp.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Esp.BorderSizePixel = 2
Esp.Position = UDim2.new(0.02, 0, 0, 0)
Esp.Size = UDim2.new(0, 299, 0, 246)

Title_4.Name = "Title"
Title_4.Parent = Esp
Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
Title_4.BackgroundTransparency = 1
Title_4.BorderColor3 = Color3.new(0, 0, 0)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0.127090305, 0, -0.0569105707, 0)
Title_4.Size = UDim2.new(0, 200, 0, 50)
Title_4.Font = Enum.Font.Arcade
Title_4.Text = "Esp"
Title_4.TextColor3 = Color3.new(1, 1, 1)
Title_4.TextSize = 18

Distance.Name = "Distance"
Distance.Parent = Esp
Distance.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Distance.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Distance.Position = UDim2.new(0.0216454342, 0, 0.21591869, 0)
Distance.Size = UDim2.new(0, 15, 0, 15)
Distance.Font = Enum.Font.SourceSans
Distance.Text = " "
Distance.TextColor3 = Color3.new(0, 0, 0)
Distance.TextSize = 14

TextLabel_12.Parent = Distance
TextLabel_12.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_12.BackgroundTransparency = 1
TextLabel_12.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(3.3999989, 0, -0.666666687, 0)
TextLabel_12.Size = UDim2.new(0, 42, 0, 35)
TextLabel_12.Font = Enum.Font.Arcade
TextLabel_12.Text = "Distance Esp"
TextLabel_12.TextColor3 = Color3.new(1, 1, 1)
TextLabel_12.TextSize = 14

Box.Name = "Box"
Box.Parent = Esp
Box.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Box.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Box.Position = UDim2.new(0.0216454342, 0, 0.114292674, 0)
Box.Size = UDim2.new(0, 15, 0, 15)
Box.Font = Enum.Font.SourceSans
Box.Text = " "
Box.TextColor3 = Color3.new(0, 0, 0)
Box.TextSize = 14

TextLabel_13.Parent = Box
TextLabel_13.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_13.BackgroundTransparency = 1
TextLabel_13.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(2.13333225, 0, -0.666666687, 0)
TextLabel_13.Size = UDim2.new(0, 42, 0, 35)
TextLabel_13.Font = Enum.Font.Arcade
TextLabel_13.Text = "Box Esp"
TextLabel_13.TextColor3 = Color3.new(1, 1, 1)
TextLabel_13.TextSize = 14

Weapon.Name = "Weapon"
Weapon.Parent = Esp
Weapon.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Weapon.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Weapon.Position = UDim2.new(0.0207357239, 0, 0.329268426, 0)
Weapon.Size = UDim2.new(0, 15, 0, 15)
Weapon.Font = Enum.Font.SourceSans
Weapon.Text = " "
Weapon.TextColor3 = Color3.new(0, 0, 0)
Weapon.TextSize = 14

TextLabel_14.Parent = Weapon
TextLabel_14.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_14.BackgroundTransparency = 1
TextLabel_14.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(2.9333322, 0, -0.666666687, 0)
TextLabel_14.Size = UDim2.new(0, 42, 0, 35)
TextLabel_14.Font = Enum.Font.Arcade
TextLabel_14.Text = "Weapon Esp"
TextLabel_14.TextColor3 = Color3.new(1, 1, 1)
TextLabel_14.TextSize = 14

Misc.Name = "Misc"
Misc.Parent = Tabs
Misc.BackgroundColor3 = Color3.new(0.133, 0.133, 0.133)
Misc.BorderColor3 = Color3.new(0.188, 0.188, 0.188)
Misc.Position = UDim2.new(0.478, 0, 0, 0)
Misc.Size = UDim2.new(0, 153, 0, 50)

MiscButton.Name = "MiscButton"
MiscButton.Parent = Misc
MiscButton.BackgroundTransparency = 1
MiscButton.Size = UDim2.new(1, 0, 1, 0)
MiscButton.Text = ""

MiscTitle.Name = "MiscTitle"
MiscTitle.Parent = Misc
MiscTitle.BackgroundColor3 = Color3.new(1, 1, 1)
MiscTitle.BackgroundTransparency = 1
MiscTitle.BorderColor3 = Color3.new(0, 0, 0)
MiscTitle.BorderSizePixel = 0
MiscTitle.Position = UDim2.new(0.045, 0, 0, 0)
MiscTitle.Size = UDim2.new(0, 139, 0, 50)
MiscTitle.Font = Enum.Font.Arcade
MiscTitle.Text = "Misc"
MiscTitle.TextColor3 = Color3.new(0.423, 0.423, 0.423)
MiscTitle.TextSize = 16

Local.Name = "Local"
Local.Parent = MiscContainer
Local.BackgroundColor3 = Color3.new(0, 0, 0)
Local.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Local.BorderSizePixel = 2
Local.Position = UDim2.new(0.02, 0, 0, 0)
Local.Size = UDim2.new(0, 299, 0, 246)

Title_5.Name = "Title"
Title_5.Parent = Local
Title_5.BackgroundColor3 = Color3.new(1, 1, 1)
Title_5.BackgroundTransparency = 1
Title_5.BorderColor3 = Color3.new(0, 0, 0)
Title_5.BorderSizePixel = 0
Title_5.Position = UDim2.new(0.140468225, 0, -0.0569105707, 0)
Title_5.Size = UDim2.new(0, 200, 0, 50)
Title_5.Font = Enum.Font.Arcade
Title_5.Text = "Local"
Title_5.TextColor3 = Color3.new(1, 1, 1)
Title_5.TextSize = 18

Xray.Name = "Xray"
Xray.Parent = Local
Xray.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Xray.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Xray.Position = UDim2.new(0, 0, 0.146341458, 0)
Xray.Size = UDim2.new(0, 15, 0, 15)
Xray.Font = Enum.Font.SourceSans
Xray.Text = " "
Xray.TextColor3 = Color3.new(0, 0, 0)
Xray.TextSize = 14

TextLabel_15.Parent = Xray
TextLabel_15.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_15.BackgroundTransparency = 1
TextLabel_15.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(2.79999995, 0, -1.33333337, 0)
TextLabel_15.Size = UDim2.new(0, 0, 0, 50)
TextLabel_15.Font = Enum.Font.Arcade
TextLabel_15.Text = "Xray"
TextLabel_15.TextColor3 = Color3.new(1, 1, 1)
TextLabel_15.TextSize = 14

Keybind_2.Name = "Keybind"
Keybind_2.Parent = Xray
Keybind_2.BackgroundColor3 = Color3.new(0, 0, 0)
Keybind_2.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Keybind_2.Position = UDim2.new(16.2666664, 0, -0.0666666701, 0)
Keybind_2.Size = UDim2.new(0, 43, 0, 15)
Keybind_2.Font = Enum.Font.SourceSans
Keybind_2.Text = "..."
Keybind_2.TextColor3 = Color3.new(1, 1, 1)
Keybind_2.TextSize = 14

Slider_2.Name = "Slider"
Slider_2.Parent = Xray
Slider_2.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Slider_2.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Slider_2.Position = UDim2.new(-0.0466003418, 0, 2.56422734, 0)
Slider_2.Size = UDim2.new(0, 210, 0, 15)

TextLabel_16.Parent = Slider_2
TextLabel_16.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_16.BackgroundTransparency = 1
TextLabel_16.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(-0.392857134, 0, -2.33333325, 0)
TextLabel_16.Size = UDim2.new(0, 258, 0, 50)
TextLabel_16.Font = Enum.Font.Arcade
TextLabel_16.Text = "Transparency"
TextLabel_16.TextColor3 = Color3.new(1, 1, 1)
TextLabel_16.TextSize = 14

SlidePart_4.Name = "SlidePart"
SlidePart_4.Parent = Slider_2
SlidePart_4.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
SlidePart_4.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
SlidePart_4.Size = UDim2.new(0, 0, 0, 15)

TextLabel_17.Parent = Slider_2
TextLabel_17.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_17.BackgroundTransparency = 1
TextLabel_17.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0.195238099, 0, -1.20000005, 0)
TextLabel_17.Size = UDim2.new(0, 135, 0, 50)
TextLabel_17.Font = Enum.Font.Arcade
TextLabel_17.Text = "Transparency"
TextLabel_17.TextColor3 = Color3.new(1, 1, 1)
TextLabel_17.TextSize = 14

Atv.Name = "Atv"
Atv.Parent = Local
Atv.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
Atv.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Atv.Position = UDim2.new(-0.00334448158, 0, 0.430894315, 0)
Atv.Size = UDim2.new(0, 15, 0, 15)
Atv.Font = Enum.Font.SourceSans
Atv.Text = " "
Atv.TextColor3 = Color3.new(0, 0, 0)
Atv.TextSize = 14

TextLabel_18.Parent = Atv
TextLabel_18.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_18.BackgroundTransparency = 1
TextLabel_18.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_18.BorderSizePixel = 0
TextLabel_18.Position = UDim2.new(2.73333335, 0, -1.33333337, 0)
TextLabel_18.Size = UDim2.new(0, 16, 0, 50)
TextLabel_18.Font = Enum.Font.Arcade
TextLabel_18.Text = "Atv Fly"
TextLabel_18.TextColor3 = Color3.new(1, 1, 1)
TextLabel_18.TextSize = 14

Keybind_3.Name = "Keybind"
Keybind_3.Parent = Atv
Keybind_3.BackgroundColor3 = Color3.new(0, 0, 0)
Keybind_3.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Keybind_3.Position = UDim2.new(16.2666664, 0, -0.0666666701, 0)
Keybind_3.Size = UDim2.new(0, 43, 0, 15)
Keybind_3.Font = Enum.Font.SourceSans
Keybind_3.Text = "..."
Keybind_3.TextColor3 = Color3.new(1, 1, 1)
Keybind_3.TextSize = 14

SliderAtv.Name = "SliderAtv"
SliderAtv.Parent = Atv
SliderAtv.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
SliderAtv.BorderColor3 = Color3.new(0.164706, 0.164706, 0.164706)
SliderAtv.Position = UDim2.new(-0.0466003418, 0, 2.56422734, 0)
SliderAtv.Size = UDim2.new(0, 210, 0, 15)

TextLabel_19.Parent = SliderAtv
TextLabel_19.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_19.BackgroundTransparency = 1
TextLabel_19.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_19.BorderSizePixel = 0
TextLabel_19.Position = UDim2.new(-0.392857134, 0, -2.33333325, 0)
TextLabel_19.Size = UDim2.new(0, 222, 0, 50)
TextLabel_19.Font = Enum.Font.Arcade
TextLabel_19.Text = "Speed"
TextLabel_19.TextColor3 = Color3.new(1, 1, 1)
TextLabel_19.TextSize = 14

SlidePart_5.Name = "SlidePart"
SlidePart_5.Parent = SliderAtv
SlidePart_5.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
SlidePart_5.BorderColor3 = Color3.new(0.168627, 0.168627, 0.168627)
SlidePart_5.Size = UDim2.new(0, 0, 0, 15)

TextLabel_20.Parent = SliderAtv
TextLabel_20.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_20.BackgroundTransparency = 1
TextLabel_20.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_20.BorderSizePixel = 0
TextLabel_20.Position = UDim2.new(0.195238099, 0, -1.20000005, 0)
TextLabel_20.Size = UDim2.new(0, 135, 0, 50)
TextLabel_20.Font = Enum.Font.Arcade
TextLabel_20.Text = "Speed"
TextLabel_20.TextColor3 = Color3.new(1, 1, 1)
TextLabel_20.TextSize = 14

Settings.Name = "Settings"
Settings.Parent = Tabs
Settings.BackgroundColor3 = Color3.new(0.133, 0.133, 0.133)
Settings.BorderColor3 = Color3.new(0.188, 0.188, 0.188)
Settings.Position = UDim2.new(0.717, 0, 0, 0)
Settings.Size = UDim2.new(0, 180, 0, 50)

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Settings
SettingsButton.BackgroundTransparency = 1
SettingsButton.Size = UDim2.new(1, 0, 1, 0)
SettingsButton.Text = ""

SettingsTitle.Name = "SettingsTitle"
SettingsTitle.Parent = Settings
SettingsTitle.BackgroundColor3 = Color3.new(1, 1, 1)
SettingsTitle.BackgroundTransparency = 1
SettingsTitle.BorderColor3 = Color3.new(0, 0, 0)
SettingsTitle.BorderSizePixel = 0
SettingsTitle.Position = UDim2.new(0.045, 0, 0, 0)
SettingsTitle.Size = UDim2.new(0, 139, 0, 50)
SettingsTitle.Font = Enum.Font.Arcade
SettingsTitle.Text = "Settings"
SettingsTitle.TextColor3 = Color3.new(0.423, 0.423, 0.423)
SettingsTitle.TextSize = 16

SettingsContainer.Name = "SettingsContainer"
SettingsContainer.Parent = Back
SettingsContainer.BackgroundColor3 = Color3.new(1, 1, 1)
SettingsContainer.BackgroundTransparency = 1
SettingsContainer.Position = UDim2.new(0.35, 0, 0, 0)
SettingsContainer.Size = UDim2.new(1, 0, 0.83, 0)
SettingsContainer.Visible = false

Keybind_4.Name = "Keybind"
Keybind_4.Parent = Settings1
Keybind_4.BackgroundColor3 = Color3.new(0, 0, 0)
Keybind_4.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Keybind_4.Position = UDim2.new(0.820722878, 0, 0.0264959261, 0)
Keybind_4.Size = UDim2.new(0, 43, 0, 15)
Keybind_4.Font = Enum.Font.SourceSans
Keybind_4.Text = "RShift"
Keybind_4.TextColor3 = Color3.new(1, 1, 1)
Keybind_4.TextSize = 14

Title_6.Name = "Title"
Title_6.Parent = Settings1
Title_6.BackgroundColor3 = Color3.new(1, 1, 1)
Title_6.BackgroundTransparency = 1
Title_6.BorderColor3 = Color3.new(0, 0, 0)
Title_6.BorderSizePixel = 0
Title_6.Position = UDim2.new(-0.137123749, 0, -0.0447154455, 0)
Title_6.Size = UDim2.new(0, 200, 0, 50)
Title_6.Font = Enum.Font.Arcade
Title_6.Text = "Menu Keybind"
Title_6.TextColor3 = Color3.new(1, 1, 1)
Title_6.TextSize = 14

Settings1.Name = "Settings1"
Settings1.Parent = Tabs.Settings
Settings1.BackgroundColor3 = Color3.new(0, 0, 0)
Settings1.BorderColor3 = Color3.new(0.113725, 0.113725, 0.113725)
Settings1.BorderSizePixel = 2
Settings1.Position = UDim2.new(-2.51535916, 0, 1.12, 0)
Settings1.Size = UDim2.new(0, 299, 0, 246)

Title_7.Name = "Title"
Title_7.Parent = Main
Title_7.BackgroundColor3 = Color3.new(1, 1, 1)
Title_7.BackgroundTransparency = 1
Title_7.BorderColor3 = Color3.new(0, 0, 0)
Title_7.BorderSizePixel = 2
Title_7.Position = UDim2.new(-0.0522658229, 0, -0.0423790105, 0)
Title_7.Size = UDim2.new(0, 199, 0, 43)
Title_7.Font = Enum.Font.Arcade
Title_7.Text = "Lancet.net"
Title_7.TextColor3 = Color3.new(1, 1, 1)
Title_7.TextSize = 17
Title_7.TextStrokeTransparency = 2
Title_7.TextWrapped = true

CombatContainer.Name = "CombatContainer"
CombatContainer.Parent = Back
CombatContainer.BackgroundColor3 = Color3.new(1, 1, 1)
CombatContainer.BackgroundTransparency = 1
CombatContainer.Position = UDim2.new(0, 0, 0.17, 0)
CombatContainer.Size = UDim2.new(1, 0, 0.83, 0)

VisualsContainer.Name = "VisualsContainer"
VisualsContainer.Parent = Back
VisualsContainer.BackgroundColor3 = Color3.new(1, 1, 1)
VisualsContainer.BackgroundTransparency = 1
VisualsContainer.Position = UDim2.new(0, 0, 0.17, 0)
VisualsContainer.Size = UDim2.new(1, 0, 0.83, 0)
VisualsContainer.Visible = false

MiscContainer.Name = "MiscContainer"
MiscContainer.Parent = Back
MiscContainer.BackgroundColor3 = Color3.new(1, 1, 1)
MiscContainer.BackgroundTransparency = 1
MiscContainer.Position = UDim2.new(0, 0, 0.17, 0)
MiscContainer.Size = UDim2.new(1, 0, 0.83, 0)
MiscContainer.Visible = false

SettingsContainer.Name = "SettingsContainer"
SettingsContainer.Parent = Back
SettingsContainer.BackgroundColor3 = Color3.new(1, 1, 1)
SettingsContainer.BackgroundTransparency = 1
SettingsContainer.Position = UDim2.new(0, 0, 0.17, 0)
SettingsContainer.Size = UDim2.new(1, 0, 0.83, 0)
SettingsContainer.Visible = false

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = Lib
ToggleButton.BackgroundColor3 = Color3.new(0, 0, 0)
ToggleButton.BorderColor3 = Color3.new(0, 0, 0)
ToggleButton.Position = UDim2.new(0.9, 0, 0.9, 0)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = "L.N"
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.TextSize = 14

local function switchTab(selectedContainer)
	CombatContainer.Visible = false
	VisualsContainer.Visible = false
	MiscContainer.Visible = false
	SettingsContainer.Visible = false

	selectedContainer.Visible = true
end

local function updateTabColors(selectedTab)
	for _, tab in pairs(Tabs:GetChildren()) do
		if tab:IsA("Frame") then
			tab.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
			tab:FindFirstChildOfClass("TextLabel").TextColor3 = Color3.new(0.423529, 0.423529, 0.423529)
		end
	end

	selectedTab.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
	selectedTab:FindFirstChildOfClass("TextLabel").TextColor3 = Color3.new(1, 1, 1)
end

CombatButton.MouseButton1Click:Connect(function()
	switchTab(CombatContainer)
	updateTabColors(Combat)
end)

VisualButton.MouseButton1Click:Connect(function()
	switchTab(VisualsContainer)
	updateTabColors(Visuals)
end)

MiscButton.MouseButton1Click:Connect(function()
	switchTab(MiscContainer)
	updateTabColors(Misc)
end)

SettingsButton.MouseButton1Click:Connect(function()
	switchTab(SettingsContainer)
	updateTabColors(Settings)
end)
CombatButton.MouseButton1Click:Connect(function()
	switchTab(CombatContainer)
	updateTabColors(Combat)
end)

VisualButton.MouseButton1Click:Connect(function()
	switchTab(VisualsContainer)
	updateTabColors(Visuals)
end)

MiscButton.MouseButton1Click:Connect(function()
	switchTab(MiscContainer)
	updateTabColors(Misc)
end)

SettingsButton.MouseButton1Click:Connect(function()
	switchTab(SettingsContainer)
	updateTabColors(Settings)
end)
local function updateSliderColor(sliderPart, value, maxValue)
	if value == maxValue then
		sliderPart.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
	else
		sliderPart.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
	end
end

local function updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
	local sliderSize = slider.AbsoluteSize.X
	local mouseX = input.Position.X
	local relativeX = mouseX - slider.AbsolutePosition.X
	local value = math.clamp(math.floor(relativeX / sliderSize * maxValue / step) * step, 0, maxValue)
	slidePart.Size = UDim2.new(value / maxValue, 0, 1, 0)
	textLabel.Text = tostring(value)
	updateSliderColor(slidePart, value, maxValue)
end

local function setupSlider(slider, slidePart, textLabel, maxValue, step)
	local draggingSlider = false
	local dragStart
	local startPos

	slider.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			draggingSlider = true
			dragStart = input.Position
			startPos = slidePart.Size

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					draggingSlider = false
				end
			end)
		end
	end)

	slider.InputChanged:Connect(function(input)
		if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
		end
	end)

	
	slidePart.Size = UDim2.new(0, 0, 1, 0)
	textLabel.Text = "0"
	updateSliderColor(slidePart, 0, maxValue)
end

local function setupPercentageSlider(slider, slidePart, textLabel, maxValue, step)
	local draggingSlider = false
	local dragStart
	local startPos

	slider.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			draggingSlider = true
			dragStart = input.Position
			startPos = slidePart.Size

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					draggingSlider = false
				end
			end)
		end
	end)

	slider.InputChanged:Connect(function(input)
		if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
			textLabel.Text = tostring(math.floor(slidePart.Size.X.Scale * 100)) .. "%"
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
			textLabel.Text = tostring(math.floor(slidePart.Size.X.Scale * 100)) .. "%"
		end
	end)

	
	slidePart.Size = UDim2.new(1, 0, 1, 0)
	textLabel.Text = "100%"
	updateSliderColor(slidePart, 100, maxValue)
end

local function setupXraySlider(slider, slidePart, textLabel, maxValue, step)
	local draggingSlider = false
	local dragStart
	local startPos

	slider.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			draggingSlider = true
			dragStart = input.Position
			startPos = slidePart.Size

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					draggingSlider = false
				end
			end)
		end
	end)

	slider.InputChanged:Connect(function(input)
		if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
			textLabel.Text = string.format("%.1f", slidePart.Size.X.Scale * maxValue)
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
			textLabel.Text = string.format("%.1f", slidePart.Size.X.Scale * maxValue)
		end
	end)

	
	slidePart.Size = UDim2.new(0, 0, 1, 0)
	textLabel.Text = "0.0"
	updateSliderColor(slidePart, 0, maxValue)
end


setupSlider(Slider, SlidePart, TextLabel_3, 10, 1)
setupPercentageSlider(Spread, SlidePart_2, TextLabel_6, 100, 1)
setupPercentageSlider(Recoil, SlidePart_3, TextLabel_9, 100, 1)
setupXraySlider(Slider_2, SlidePart_4, TextLabel_16, 1, 0.1) 
setupSlider(SliderAtv, SlidePart_5, TextLabel_19, 90, 1) 



local UserInputService = game:GetService("UserInputService")

local function updateButtonColor(button, isEnabled)
	if isEnabled then
		button.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
	else
		button.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
	end
end

local isCollideEnabled = false
local isToggleEnabled = false
local isLongneckEnabled = false
local isSilentEnabled = false
local isAtvEnabled = false
local isXrayEnabled = false
local isBoxEnabled = false
local isDistanceEnabled = false
local isWeaponEnabled = false
local isCrossEnabEnabled = false
local isPulseEnabled = false

local keybindPicker = Keybind_4
local currentKeybind = Enum.KeyCode.RightShift
local listeningForKeybind = false

local xrayKeybindPicker = Keybind_2
local currentXrayKeybind = nil
local listeningForXrayKeybind = false

local atvKeybindPicker = Keybind_3
local currentAtvKeybind = nil
local listeningForAtvKeybind = false

local longneckKeybindPicker = Keybind
local currentLongneckKeybind = nil
local listeningForLongneckKeybind = false

local function setKeybind(key, picker, listener)
	if picker == keybindPicker then
		currentKeybind = key
	elseif picker == xrayKeybindPicker then
		currentXrayKeybind = key
	elseif picker == atvKeybindPicker then
		currentAtvKeybind = key
	elseif picker == longneckKeybindPicker then
		currentLongneckKeybind = key
	end
	picker.Text = key.Name
	listener = false
end

local function toggleGuiVisibility()
	Lib.Enabled = not Lib.Enabled
end

local function toggleXray()
	isXrayEnabled = not isXrayEnabled
	updateButtonColor(Xray, isXrayEnabled)
end

local function toggleAtv()
	isAtvEnabled = not isAtvEnabled
	updateButtonColor(Atv, isAtvEnabled)
end

local function toggleLongneck()
	isLongneckEnabled = not isLongneckEnabled
	updateButtonColor(Longneck, isLongneckEnabled)
end


keybindPicker.Text = "RightShift"
xrayKeybindPicker.Text = "None"
atvKeybindPicker.Text = "None"
longneckKeybindPicker.Text = "None"

keybindPicker.MouseButton1Click:Connect(function()
	listeningForKeybind = true
	keybindPicker.Text = "..."
end)

xrayKeybindPicker.MouseButton1Click:Connect(function()
	listeningForXrayKeybind = true
	xrayKeybindPicker.Text = "..."
end)

atvKeybindPicker.MouseButton1Click:Connect(function()
	listeningForAtvKeybind = true
	atvKeybindPicker.Text = "..."
end)

longneckKeybindPicker.MouseButton1Click:Connect(function()
	listeningForLongneckKeybind = true
	longneckKeybindPicker.Text = "..."
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed then
		if listeningForKeybind then
			setKeybind(input.KeyCode, keybindPicker, listeningForKeybind)
			listeningForKeybind = false
		elseif listeningForXrayKeybind then
			setKeybind(input.KeyCode, xrayKeybindPicker, listeningForXrayKeybind)
			listeningForXrayKeybind = false
		elseif listeningForAtvKeybind then
			setKeybind(input.KeyCode, atvKeybindPicker, listeningForAtvKeybind)
			listeningForAtvKeybind = false
		elseif listeningForLongneckKeybind then
			setKeybind(input.KeyCode, longneckKeybindPicker, listeningForLongneckKeybind)
			listeningForLongneckKeybind = false
		elseif input.KeyCode == currentKeybind then
			toggleGuiVisibility()
		elseif input.KeyCode == currentXrayKeybind then
			toggleXray()
		elseif input.KeyCode == currentAtvKeybind then
			toggleAtv()
		elseif input.KeyCode == currentLongneckKeybind then
			toggleLongneck()
		end
	end
end)

Collide.MouseButton1Click:Connect(function()
	isCollideEnabled = not isCollideEnabled
	updateButtonColor(Collide, isCollideEnabled)
end)

Toggle.MouseButton1Click:Connect(function()
	isToggleEnabled = not isToggleEnabled
	updateButtonColor(Toggle, isToggleEnabled)
end)

Longneck.MouseButton1Click:Connect(function()
	isLongneckEnabled = not isLongneckEnabled
	updateButtonColor(Longneck, isLongneckEnabled)
end)

Silent.MouseButton1Click:Connect(function()
	isSilentEnabled = not isSilentEnabled
	updateButtonColor(Silent, isSilentEnabled)
end)

Atv.MouseButton1Click:Connect(function()
	isAtvEnabled = not isAtvEnabled
	updateButtonColor(Atv, isAtvEnabled)
end)

Xray.MouseButton1Click:Connect(function()
	isXrayEnabled = not isXrayEnabled
	updateButtonColor(Xray, isXrayEnabled)
end)

Box.MouseButton1Click:Connect(function()
	isBoxEnabled = not isBoxEnabled
	updateButtonColor(Box, isBoxEnabled)
end)

Distance.MouseButton1Click:Connect(function()
	isDistanceEnabled = not isDistanceEnabled
	updateButtonColor(Distance, isDistanceEnabled)
end)

Weapon.MouseButton1Click:Connect(function()
	isWeaponEnabled = not isWeaponEnabled
	updateButtonColor(Weapon, isWeaponEnabled)
end)

CrossEnab.MouseButton1Click:Connect(function()
	isCrossEnabEnabled = not isCrossEnabEnabled
	updateButtonColor(CrossEnab, isCrossEnabEnabled)
end)

Pulse.MouseButton1Click:Connect(function()
	isPulseEnabled = not isPulseEnabled
	updateButtonColor(Pulse, isPulseEnabled)
end)
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local LocalPlayer = game:GetService('Players').LocalPlayer
local Workspace = game:GetService('Workspace')
local Camera = game:GetService('Workspace').CurrentCamera
local Ignore = Workspace:FindFirstChild('Ignore')
local FPSArms = Ignore:FindFirstChild('FPSArms')
local ClientPlayer = Ignore:FindFirstChild('LocalCharacter')
local SleepAnimationId = "rbxassetid://13280887764"

local HeadIndex
HeadIndex = hookmetamethod(game, "__index", newcclosure(function(Self, Index)
    if (tostring(Self) == "Head" and Index == "Size") then
        return Vector3.new(1.672248125076294, 0.835624098777771, 0.835624098777771)
    end
    return HeadIndex(Self, Index)
end))

local TorsoIndex
TorsoIndex = hookmetamethod(game, "__index", newcclosure(function(Self, Index)
    if (tostring(Self) == "Torso" and Index == "Size") then
        return Vector3.new(0.6530659198760986, 2.220424175262451, 1.4367451667785645)
    end
    return TorsoIndex(Self, Index)
end))

function IsSleeping(Player)
    local Animations = Player.AnimationController:GetPlayingAnimationTracks()
    for i, v in pairs(Animations) do
        if (v.IsPlaying and v.Animation.AnimationId == SleepAnimationId) then
            return true
        end
    end
    return false
end

function GetPlayers()
    local Players = {}
    for i,v in next, Workspace:GetChildren() do
        if (v:IsA('Model') and v:FindFirstChild('HumanoidRootPart') and tostring(v.Parent) ~= 'FPSArms') then
            table.insert(Players, v)
        end
    end
    return Players
end

local function applyHitbox(player)
    local Head = player:FindFirstChild("Head")
    if (Head and not IsSleeping(player)) then
        Head.Size = Vector3.new(8.8, 6, 8.8)
        Head.Transparency = 1
        Head.CanCollide = false
    end

    local Torso = player:FindFirstChild("Torso")
    if (Torso and not IsSleeping(player)) then
        Torso.Size = Vector3.new(8.5, 6.5, 8.5)
        Torso.Transparency = 1
        Torso.CanCollide = false
    end
end

local function removeHitbox(player)
    local Head = player:FindFirstChild("Head")
    if (Head) then
        Head.Size = Vector3.new(1.672248125076294, 0.835624098777771, 0.835624098777771)
        Head.Transparency = 0
        Head.CanCollide = true
    end

    local Torso = player:FindFirstChild("Torso")
    if (Torso) then
        Torso.Size = Vector3.new(0.6530659198760986, 2.220424175262451, 1.4367451667785645)
        Torso.Transparency = 0
        Torso.CanCollide = true
    end
end

local function updateHitboxSize(value)
    for _, player in pairs(GetPlayers()) do
        local Head = player:FindFirstChild("Head")
        if (Head and not IsSleeping(player)) then
            Head.Size = Vector3.new(value, value * 0.7, value * 0.7)
            Head.Transparency = 1
        end

        local Torso = player:FindFirstChild("Torso")
        if (Torso and not IsSleeping(player)) then
            Torso.Size = Vector3.new(value * 0.75, value * 2.5, value * 0.85)
            Torso.Transparency = 1
        end
    end
end

local function updateHitboxVisibility(isVisible)
    for _, player in pairs(GetPlayers()) do
        if isVisible then
            applyHitbox(player)
        else
            removeHitbox(player)
        end
    end
end

local function updateCanCollide(isEnabled)
    for _, player in pairs(GetPlayers()) do
        local Head = player:FindFirstChild("Head")
        if (Head and not IsSleeping(player)) then
            Head.CanCollide = not isEnabled
        end

        local Torso = player:FindFirstChild("Torso")
        if (Torso and not IsSleeping(player)) then
            Torso.CanCollide = not isEnabled
        end
    end
end

Workspace.ChildAdded:Connect(function(child)
    if (child:IsA('Model') and child:FindFirstChild('HumanoidRootPart')) then
        if (isToggleEnabled) then
            applyHitbox(child)
        else
            removeHitbox(child)
        end
    end
end)

for _, player in pairs(GetPlayers()) do
    removeHitbox(player)
end

local function updateButtonColor(button, isEnabled)
    if isEnabled then
        button.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
    else
        button.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
    end
end

local isToggleEnabled = false
local isCollideEnabled = false

setupSlider(Slider, SlidePart, TextLabel_3, 10, 1)
SlidePart.Changed:Connect(function()
    local value = SlidePart.Size.X.Scale * 10
    updateHitboxSize(value)
    TextLabel_3.Text = tostring(value)
end)

Toggle.MouseButton1Click:Connect(function()
    isToggleEnabled = not isToggleEnabled
    updateButtonColor(Toggle, isToggleEnabled)
    updateHitboxVisibility(isToggleEnabled)
end)

Collide.MouseButton1Click:Connect(function()
    isCollideEnabled = not isCollideEnabled
    updateButtonColor(Collide, isCollideEnabled)
    updateCanCollide(isCollideEnabled)
end)

updateHitboxSize(1)
updateHitboxVisibility(false)
updateCanCollide(false)
updateButtonColor(Toggle, isToggleEnabled)
updateButtonColor(Collide, isCollideEnabled)

local xrayEnabled = false
local currentXrayKeybind = nil
local listeningForXrayKeybind = false
local xrayTransparency = 0.5

local function xray()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and not v.Parent:FindFirstChildWhichIsA("Humanoid") and not v.Parent.Parent:FindFirstChildWhichIsA("Humanoid") then
            v.LocalTransparencyModifier = xrayEnabled and xrayTransparency or 0
        end
    end
end

local function toggleXray()
    xrayEnabled = not xrayEnabled
    updateButtonColor(Xray, xrayEnabled)
    xray()
end

local function updateButtonColor(button, isEnabled)
    if isEnabled then
        button.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
    else
        button.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
    end
end

local function setKeybind(key, picker, listener)
    if picker == Keybind_2 then
        currentXrayKeybind = key
    end
    picker.Text = key.Name
    listener = false
end

local UserInputService = game:GetService("UserInputService")

Keybind_2.MouseButton1Click:Connect(function()
    listeningForXrayKeybind = true
    Keybind_2.Text = "..."
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if listeningForXrayKeybind then
            setKeybind(input.KeyCode, Keybind_2, listeningForXrayKeybind)
            listeningForXrayKeybind = false
        elseif input.KeyCode == currentXrayKeybind then
            toggleXray()
        end
    end
end)

Xray.MouseButton1Click:Connect(function()
    toggleXray()
end)

local function updateSliderColor(sliderPart, value, maxValue)
    if value == maxValue then
        sliderPart.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
    else
        sliderPart.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
    end
end

local function updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
    local sliderSize = slider.AbsoluteSize.X
    local mouseX = input.Position.X
    local relativeX = mouseX - slider.AbsolutePosition.X
    local value = math.clamp(math.floor(relativeX / sliderSize * maxValue / step) * step, 0, maxValue)
    slidePart.Size = UDim2.new(value / maxValue, 0, 1, 0)
    textLabel.Text = tostring(value / 10)  
    updateSliderColor(slidePart, value, maxValue)
    xrayTransparency = value / 10
    xray()
end

local function setupSlider(slider, slidePart, textLabel, maxValue, step)
    local draggingSlider = false
    local dragStart
    local startPos

    slider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            draggingSlider = true
            dragStart = input.Position
            startPos = slidePart.Size

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    draggingSlider = false
                end
            end)
        end
    end)

    slider.InputChanged:Connect(function(input)
        if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
        end
    end)

    slidePart.Size = UDim2.new(0.5, 0, 1, 0)  
    textLabel.Text = "0.5"
    updateSliderColor(slidePart, 5, maxValue)
end


updateButtonColor(Xray, xrayEnabled)
Keybind_2.Text = "None"
setupSlider(Slider_2, SlidePart_4, TextLabel_16, 10, 1)  

local longneck = {
    LongNeckEnabled = false,
    UpperLimitDefault = 7,
    LowerLimitDefault = 2.89,
    EnabledHeight = 8,
    DisabledHeight = 2.89,
}

local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local LocalCharacter = Workspace.Ignore.LocalCharacter
local PrismaticConstraint = LocalCharacter.Bottom.PrismaticConstraint

local function updateLimits()
    if longneck.LongNeckEnabled then
        PrismaticConstraint.UpperLimit = longneck.EnabledHeight
        PrismaticConstraint.LowerLimit = longneck.EnabledHeight
    else
        PrismaticConstraint.UpperLimit = longneck.UpperLimitDefault
        PrismaticConstraint.LowerLimit = longneck.LowerLimitDefault
    end
end

local function toggleLongneck()
    longneck.LongNeckEnabled = not longneck.LongNeckEnabled
    updateButtonColor(Longneck, longneck.LongNeckEnabled)
    updateLimits()
end

local function updateButtonColor(button, isEnabled)
    if isEnabled then
        button.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
    else
        button.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
    end
end

local currentLongneckKeybind = nil
local listeningForLongneckKeybind = false

local function setKeybind(key, picker, listener)
    if picker == Keybind then
        currentLongneckKeybind = key
    end
    picker.Text = key.Name
    listener = false
end

Keybind.MouseButton1Click:Connect(function()
    listeningForLongneckKeybind = true
    Keybind.Text = "..."
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if listeningForLongneckKeybind then
            setKeybind(input.KeyCode, Keybind, listeningForLongneckKeybind)
            listeningForLongneckKeybind = false
        elseif input.KeyCode == currentLongneckKeybind then
            toggleLongneck()
        end
    end
end)

Longneck.MouseButton1Click:Connect(function()
    toggleLongneck()
end)

updateButtonColor(Longneck, longneck.LongNeckEnabled)

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local Camera = Workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local MAX_SPEED = 90
local MIN_SPEED = 27
local speed = 69
local isSpeedToggled = false
local previousSpeed = speed
local collisionToggle = false
local ClosestATV = nil
local Enabled = false
local atvbypass = true
local noatvrestriction = false

local function clampSpeed(value, min, max)
    return math.max(min, math.min(max, value))
end

local function adjustSpeed(amount)
    speed = clampSpeed(speed + amount, MIN_SPEED, MAX_SPEED)
end

local function toggleSpeed()
    if isSpeedToggled then
        speed = previousSpeed
    else
        previousSpeed = speed
        speed = 40
    end
    isSpeedToggled = not isSpeedToggled
end

local function GetClosestATV()
    local closestATV, closestDistance = nil, math.huge

    for _, v in ipairs(Workspace:GetChildren()) do
        if v:FindFirstChild("Seat") and v:FindFirstChild("Plastics") then
            local distance = (v.Plastics.Position - Workspace.Ignore.LocalCharacter.Middle.Position).Magnitude
            if distance < closestDistance then
                closestATV = v
                closestDistance = distance
            end
        end
    end

    return closestATV
end

local function toggleATVCollision()
    if not ClosestATV then return end

    collisionToggle = not collisionToggle
    for _, part in ipairs(ClosestATV:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = collisionToggle
        end
    end
end

local function FlyHack()
    RunService.RenderStepped:Connect(function()
        ClosestATV = GetClosestATV()
        if Enabled and ClosestATV then
            local plastics = ClosestATV.Plastics
            plastics.Velocity = Vector3.zero

            local flip2 = ClosestATV.Frame:FindFirstChild("Flip2")
            if not flip2 then
                local newFlip = ClosestATV.Frame.Flip:Clone()
                newFlip.Name = "Flip2"
                newFlip.Enabled = true
                newFlip.Parent = ClosestATV.Frame
            else
                flip2.Enabled = true
            end

            local travel = Vector3.zero
            local cameraCFrame = Workspace.CurrentCamera.CFrame

            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                travel += cameraCFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                travel -= cameraCFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                travel += cameraCFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                travel -= cameraCFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.X) then
                travel += cameraCFrame.UpVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                travel -= cameraCFrame.UpVector
            end

            if travel.Magnitude > 0 then
                plastics.Anchored = false
                plastics.Velocity = travel.Unit * speed
            else
                plastics.Velocity = Vector3.zero
                plastics.Anchored = false
            end
        else
            local flip2 = ClosestATV and ClosestATV.Frame:FindFirstChild("Flip2")
            if flip2 then
                flip2.Enabled = false
            end
        end
    end)
end

local function updateButtonColor(button, isEnabled)
    if isEnabled then
        button.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
    else
        button.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
    end
end

local currentATVKeybind = nil
local listeningForATVKeybind = false

local function setKeybind(key, picker, listener)
    if picker == Keybind_3 then
        currentATVKeybind = key
    end
    picker.Text = key.Name
    listener = false
end

Keybind_3.MouseButton1Click:Connect(function()
    listeningForATVKeybind = true
    Keybind_3.Text = "..."
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if listeningForATVKeybind then
            setKeybind(input.KeyCode, Keybind_3, listeningForATVKeybind)
            listeningForATVKeybind = false
        elseif input.KeyCode == currentATVKeybind then
            Enabled = not Enabled
            noatvrestriction = Enabled
            updateButtonColor(Atv, Enabled)
        end
    end
end)

Atv.MouseButton1Click:Connect(function()
    Enabled = not Enabled
    noatvrestriction = Enabled
    updateButtonColor(Atv, Enabled)
end)

local function updateSliderColor(sliderPart, value, maxValue)
    if value == maxValue then
        sliderPart.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
    else
        sliderPart.BackgroundColor3 = Color3.new(0.341176, 0.352941, 0.588235)
    end
end

local function updateSliderValue(slider, slidePart, textLabel, input, maxValue, step)
    local sliderSize = slider.AbsoluteSize.X
    local mouseX = input.Position.X
    local relativeX = mouseX - slider.AbsolutePosition.X
    local value = math.clamp(math.floor(relativeX / sliderSize * maxValue / step) * step, 0, maxValue)
    slidePart.Size = UDim2.new(value / maxValue, 0, 1, 0)
    textLabel.Text = tostring(value)
    updateSliderColor(slidePart, value, maxValue)
    speed = value
end

local function setupSlider(slider, slidePart, textLabel, maxValue, step)
    local draggingSlider = false
    local dragStart
    local startPos

    slider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            draggingSlider = true
            dragStart = input.Position
            startPos = slidePart.Size

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    draggingSlider = false
                end
            end)
        end
    end)

    slider.InputChanged:Connect(function(input)
        if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateSliderValue(slider, slidePart, TextLabel_19, input, maxValue, step)
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if draggingSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateSliderValue(slider, slidePart, TextLabel_19, input, maxValue, step)
        end
    end)

    slidePart.Size = UDim2.new(0.5, 0, 1, 0)
    textLabel.Text = "45"
    updateSliderColor(slidePart, 45, maxValue)
end

setupSlider(SliderAtv, SlidePart_5, TextLabel_19, MAX_SPEED, 1)

-- Initialize the button color
updateButtonColor(Atv, Enabled)

FlyHack()

RunService.RenderStepped:Connect(function()
    for _, v in ipairs(Workspace:GetChildren()) do
        local frame = v:FindFirstChild("Frame")
        if frame then
            local flip = frame:FindFirstChild("Flip")
            if flip and atvbypass then
                flip.Enabled = true
                flip.RigidityEnabled = true
                flip.Responsiveness = math.huge
            end
        end
    end
end)

local trident = {
    loaded = false,
    gc = {
        isgrounded = nil,
        character = nil,
        camera = nil
    },
}

local function findCameraModule()
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" then
            if type(rawget(v, "SetMaxRelativeLookExtentsY")) == "function" then
                return v
            end
        end
    end
    return nil
end

local cameraModule = findCameraModule()

task.spawn(function()
    while wait() do
        if noatvrestriction and cameraModule and cameraModule.SetMaxRelativeLookExtentsY then
            cameraModule.SetMaxRelativeLookExtentsY(10000)
        end
    end
end)

local FOVCircle = Drawing.new("Circle")
FOVCircle.Visible = true
FOVCircle.Radius = 80
FOVCircle.Thickness = 1
FOVCircle.Filled = false
FOVCircle.Color = Color3.fromRGB(255, 255, 255)
FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

local snapLine = Drawing.new("Line")
snapLine.Visible = false
snapLine.Color = Color3.fromRGB(255, 255, 255)
snapLine.Thickness = 1

local runService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Classes = getrenv()._G.classes
local CameraClient = Classes.Camera
local FPSClient = Classes.FPS
local Camera = cloneref(game:GetService("Workspace").CurrentCamera)

local validGuns = {
    "AR15", "C9", "Crossbow", "Bow", "EnergyRifle", "GaussRifle",
    "HMAR", "KABAR", "LeverActionRifle", "M4A1", "PipePistol",
    "PipeSMG", "PumpShotgun", "SCAR", "SVD", "USP9", "UZI", "Blunderbuss"
}

local isSilentAimEnabled = false
local currentSilentAimKeybind = nil
local listeningForSilentAimKeybind = false

function IsValidGun(gun)
    return table.find(validGuns, tostring(gun)) ~= nil
end

function GetClosestTarget(maxDistance)
    local closestTarget, targetVelocity, closestDistance = nil, nil, math.huge
    for i, v in next, Classes.Player.EntityMap do
        if (v.type == "Player" or v.type == "Soldier") and not v.sleeping and v.model:FindFirstChild("HumanoidRootPart") then
            local distanceToPlayer = (v.model.HumanoidRootPart.Position - Camera.CFrame.Position).Magnitude
            local screenPoint = Camera:WorldToViewportPoint(v.model.Head.Position)
            local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
            local distanceFromCenter = (Vector2.new(screenPoint.X, screenPoint.Y) - center).Magnitude
            if distanceToPlayer <= maxDistance and distanceFromCenter <= FOVCircle.Radius and distanceToPlayer < closestDistance then
                closestTarget = v.model
                targetVelocity = v.velocityVector
                closestDistance = distanceToPlayer
            end
        end
    end
    return closestTarget, targetVelocity
end

function CalculateBulletDrop(tPos, tVel, cPos, pSpeed, pDrop)
    local dTT = (tPos - cPos).Magnitude
    local tTT = dTT / pSpeed
    local sVE = 8.8 - (pSpeed / (400 + pSpeed / 35))
    local horizontalVel = Vector3.new(tVel.X, 0, tVel.Z) * 6.9
    local verticalVel = Vector3.new(0, tVel.Y, 0) * 3
    local adjustedVel = horizontalVel + verticalVel
    local pTP = tPos + (adjustedVel * tTT)
    local dP = -pDrop ^ (tTT * pDrop) + 3
    local pPWD = pTP - Vector3.new(0, dP, 0)
    return pPWD
end

local oldGetCFrame = CameraClient.GetCFrame
CameraClient.GetCFrame = function()
    if isSilentAimEnabled then
        local closest, velocityVector = GetClosestTarget(1000)
        local equippedData = FPSClient.GetEquippedItem()
        if equippedData and closest and closest:FindFirstChild("HumanoidRootPart") and IsValidGun(equippedData.type) then
            local itemClass = Classes[equippedData.type]
            if itemClass then
                local projectileSpeed = itemClass.ProjectileSpeed
                local projectileDrop = itemClass.ProjectileDrop
                local predictedPosition = CalculateBulletDrop(closest.Head.Position, velocityVector, Camera.CFrame.Position, projectileSpeed, projectileDrop)
                return CFrame.new(Camera.CFrame.Position, predictedPosition)
            end
        end
    end
    return oldGetCFrame()
end

runService.RenderStepped:Connect(function(deltaTime)
    FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

    local closest, _ = GetClosestTarget(1000)
    if closest and closest:FindFirstChild("Head") then
        local headPosition = Camera:WorldToViewportPoint(closest.Head.Position)
        snapLine.From = FOVCircle.Position
        snapLine.To = Vector2.new(headPosition.X, headPosition.Y)
        snapLine.Visible = true
    else
        snapLine.Visible = false
    end
end)

local function updateButtonColor(button, isEnabled)
    if isEnabled then
        button.BackgroundColor3 = Color3.fromRGB(87, 90, 150)
    else
        button.BackgroundColor3 = Color3.new(0.0470588, 0.0470588, 0.0470588)
    end
end

local function setKeybind(key, picker, listener)
    if picker == Keybind then
        currentSilentAimKeybind = key
    end
    picker.Text = key.Name
    listener = false
end

Keybind.MouseButton1Click:Connect(function()
    listeningForSilentAimKeybind = true
    Keybind.Text = "..."
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if listeningForSilentAimKeybind then
            setKeybind(input.KeyCode, Keybind, listeningForSilentAimKeybind)
            listeningForSilentAimKeybind = false
        elseif input.KeyCode == currentSilentAimKeybind then
            isSilentAimEnabled = not isSilentAimEnabled
            updateButtonColor(Silent, isSilentAimEnabled)
        end
    end
end)

Silent.MouseButton1Click:Connect(function()
    isSilentAimEnabled = not isSilentAimEnabled
    updateButtonColor(Silent, isSilentAimEnabled)
end)

updateButtonColor(Silent, isSilentAimEnabled)
