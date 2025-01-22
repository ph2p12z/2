-- Silent Aim and Manipulator
local RunService = game:GetService("RunService")
local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local Config = {
    Manipulation = {
        Enabled = true, -- Set to true to enable manipulation
        Angles = 30,
        Radius = 6,
        Direction = "Normal",
        Vector = Vector3.new(0, 0, 0)
    },
}

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = 80
FOVCircle.Color = Color3.fromRGB(45, 116, 202)
FOVCircle.Visible = true -- Set to true to make the FOV circle visible

local Line = Drawing.new("Line")
Line.Color = Color3.fromRGB(255, 255, 255)
Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
Line.Thickness = 1
Line.Visible = true
Line.ZIndex = 1

local SilentEnabled = true -- Set to true to enable silent aim
local Target = nil
local PlayersVelocity = nil

local function GetPlayer()
    local closest, playerTable = nil, nil
    local closestMagnitude = math.huge
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and not v.Character:FindFirstChild("forceField") then
            local PartPos, OnScreen = Camera:WorldToViewportPoint(v.Character.Head.Position)
            local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)).Magnitude
            local PlayerDistance = (LocalPlayer.Character.PrimaryPart.Position - v.Character.PrimaryPart.Position).Magnitude

            if Magnitude < FOVCircle.Radius and PlayerDistance <= 9999 and Magnitude < closestMagnitude and OnScreen then
                closestMagnitude = Magnitude
                closest = v.Character
                playerTable = v
            end
        end
    end
    return closest, playerTable
end

local function updateTarget()
    local target = Target
    if target then
        getgenv().Target = target
    end
end

local function updateSnapline()
    local Target, playerData = GetPlayer()
    if Target and Target:FindFirstChild("Head") then
        local headPos, onScreen = Camera:WorldToViewportPoint(Target.Head.Position)
        Line.Visible = onScreen

        if onScreen then
            Line.To = Vector2.new(headPos.X, headPos.Y)
            Target = Target
            PlayersVelocity = playerData.Character.PrimaryPart.Velocity
        else
            Target = nil
            PlayersVelocity = nil
        end
    else
        Line.Visible = false
        Target = nil
        PlayersVelocity = nil
    end
end

local function GetProjectileInfo()
    local equippedItem = LocalPlayer.Character:FindFirstChildOfClass("Tool")

    if equippedItem == nil then
        return 0, 0
    else
        local projectileSpeed = equippedItem.ProjectileSpeed
        local projectileDrop = equippedItem.ProjectileDrop
        if projectileSpeed == nil or projectileDrop == nil then
            return 0, 0
        else
            return projectileSpeed, projectileDrop
        end
    end
end

getgenv().Predict = function(Player, Velocity)
    local PSpeed, PDrop = GetProjectileInfo()

    if PSpeed and PDrop then
        while true do
            if Player.Position then
                local Dist = (Player.Position - Camera.CFrame.Position).Magnitude

                if Dist > 0 then
                    local TimeToHit = Dist / PSpeed

                    local PPos1 = Player.Position + (Velocity * TimeToHit * 3.4)

                    local Drop = -PDrop ^ (TimeToHit * PDrop) + 1.1
                    local PPos = PPos1 - Vector3.new(0, Drop, 0)

                    return PPos, TimeToHit
                end
            end

            wait()
        end
    end

    return Vector3.new(0, 0, 0), nil
end

local OldHook
OldHook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if SilentEnabled and Target and PlayersVelocity and Config.Manipulation.Enabled then
        local targetHead = Target.Head
        local predictedPos = getgenv().Predict(targetHead, PlayersVelocity)

        if predictedPos then
            local targetPos = CFrame.lookAt(Camera.CFrame.p, predictedPos) * CFrame.new(Config.Manipulation.Vector)
            setstack(3, 4, targetPos)
        end
    end

    return OldHook(self, ...)
end))

RunService.RenderStepped:Connect(function()
    updateSnapline()
    updateTarget()
end)
