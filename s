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

-- Additional checks and hooks
local function isPartVisibleFromPosition(part, observerPosition)
    local direction = (part.Position - observerPosition).unit
    local ray = Ray.new(observerPosition, direction * (part.Position - observerPosition).magnitude)
    local ignore = workspace.Ignore:GetDescendants()
    local hit = workspace:FindPartOnRayWithIgnoreList(ray, ignore)
    return hit and hit.Name == part.Name
end

local function isAnyPartVisibleFromPosition(Target, partNames, observerPosition)
    for _, partName in ipairs(partNames) do
        local part = Target:FindFirstChild(partName)
        if part and isPartVisibleFromPosition(part, observerPosition) then
            return true
        end
    end
    return false
end

local function calculateBestOffset(Target)
    local bestDirection = "Normal"
    local bestOffset = Vector3.new()

    for angle = 0, 360, 15 do
        local radianAngle = math.rad(angle)
        for xOffset = 1, 3 do
            for yOffset = -4, 4 do
                local x = math.cos(radianAngle) * xOffset
                local offset = Vector3.new(x, yOffset, 0)

                if isAnyPartVisibleFromPosition(Target, {"Head", "Torso"}, game.Workspace.CurrentCamera.CFrame.Position + offset) then
                    bestDirection = angle
                    bestOffset = offset
                    return bestDirection, bestOffset
                end
            end
        end
    end

    return bestDirection, bestOffset
end

local function canHitTargetDirectly(Target)
    local targetHead = Target:FindFirstChild("Head")
    if targetHead then
        return isAnyPartVisibleFromPosition(Target, {"Head", "Torso"}, game.Workspace.CurrentCamera.CFrame.Position)
    end
    return false
end

task.spawn(function()
    while task.wait(0.3) do
        if SilentEnabled and Config.Manipulation then
            local Target = GetPlayer()
            if Target and Target:FindFirstChild("Head") then
                if canHitTargetDirectly(Target) then
                    Config.Manipulation.Direction = "Normal"
                    Config.Manipulation.Vector = Vector3.new()
                else
                    local bestDirection, bestOffset = calculateBestOffset(Target)
                    if Target == nil then
                        -- Do nothing
                    end
                    Config.Manipulation.Direction = bestDirection
                    Config.Manipulation.Vector = bestDirection == "Normal" and Vector3.new() or bestOffset
                end
            end
        end
    end
end)

-- Hooking into the game's functions to manipulate the aim
local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldIndex = mt.__namecall
mt.__namecall = function(...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" then
        local eventId, eventType, hitPart = args[2], args[3], args[7]

        if eventId == 10 and eventType == "Hit" and (hitPart == "Torso" or hitPart == "Head") then
            local genVector = char:GenVector(args[9])
            args[8] = Vector3.new(genVector.X, genVector.Y, genVector.Z)
        end
    end

    return oldIndex(table.unpack(args))
end

setreadonly(mt, true)

-- Additional hooks for manipulation
local meta = getrawmetatable(game)
setreadonly(meta, false)

local oldIndex = meta.__namecall
meta.__namecall = function(...)
    local method = getnamecallmethod()
    local args = {...}
    if args[2] == 10 and args[3] == "Hit" and args[7] == "Torso" and hitboxoverrider then
        args[7] = "Head"
    end
    return oldIndex(table.unpack(args))
end

setreadonly(meta, true)

-- Ensure the script runs correctly
RunService.RenderStepped:Connect(function()
    updateSnapline()
    updateTarget()
end)

-- Additional utility functions
local function GetClosestPlayer()
    local closest, playerTable, closestMagnitude = nil, nil, math.huge
    local localCharPos = workspace.Ignore.LocalCharacter.Middle.Position

    for _, v in pairs(PlayerList or {}) do
        if v.type == "Player" and v.model then
            local humanoidRootPart = v.model:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart and not v.sleeping then
                local partPos, onScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)
                local playerDistance = (localCharPos - humanoidRootPart.Position).Magnitude
                if playerDistance <= Config.Manipulation.Radius and onScreen then
                    local magnitude = (Vector2.new(partPos.X, partPos.Y) - Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)).Magnitude
                    if magnitude < closestMagnitude then
                        closestMagnitude = magnitude
                        closest = v.model
                        playerTable = v
                    end
                end
            end
        end
    end
    return closest, playerTable
end

local function GetProjectileInfo()
    local equippedItem = CharacterList[2].GetEquippedItem()

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

local function updateSnapline()
    local Target, playerData = GetClosestPlayer()
    if Target and Target:FindFirstChild("Head") then
        local headPos, onScreen = Camera:WorldToViewportPoint(Target.Head.Position)
        Line.Visible = onScreen

        if onScreen then
            Line.To = Vector2.new(headPos.X, headPos.Y)
            Target = Target
            PlayersVelocity = playerData.velocityVector
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

local function canHitTargetDirectly(Target)
    local targetHead = Target:FindFirstChild("Head")
    if targetHead then
        return isAnyPartVisibleFromPosition(Target, {"Head", "Torso"}, game.Workspace.CurrentCamera.CFrame.Position)
    end
    return false
end

task.spawn(function()
    while task.wait(0.3) do
        if SilentEnabled and Config.Manipulation then
            local Target = GetClosestPlayer()
            if Target and Target:FindFirstChild("Head") then
                if canHitTargetDirectly(Target) then
                    Config.Manipulation.Direction = "Normal"
                    Config.Manipulation.Vector = Vector3.new()
                else
                    local bestDirection, bestOffset = calculateBestOffset(Target)
                    if Target == nil then
                        -- Do nothing
                    end
                    Config.Manipulation.Direction = bestDirection
                    Config.Manipulation.Vector = bestDirection == "Normal" and Vector3.new() or bestOffset
                end
            end
        end
    end
end)

-- Hooking into the game's functions to manipulate the aim
local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldIndex = mt.__namecall
mt.__namecall = function(...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" then
        local eventId, eventType, hitPart = args[2], args[3], args[7]

        if eventId == 10 and eventType == "Hit" and (hitPart == "Torso" or hitPart == "Head") then
            local genVector = char:GenVector(args[9])
            args[8] = Vector3.new(genVector.X, genVector.Y, genVector.Z)
        end
    end

    return oldIndex(table.unpack(args))
end

setreadonly(mt, true)

-- Additional hooks for manipulation
local meta = getrawmetatable(game)
setreadonly(meta, false)

local oldIndex = meta.__namecall
meta.__namecall = function(...)
    local method = getnamecallmethod()
    local args = {...}
    if args[2] == 10 and args[3] == "Hit" and args[7] == "Torso" and hitboxoverrider then
        args[7] = "Head"
    end
    return oldIndex(table.unpack(args))
end

setreadonly(meta, true)

-- Ensure the script runs correctly
RunService.RenderStepped:Connect(function()
    updateSnapline()
    updateTarget()
end)
