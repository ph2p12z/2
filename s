local Config = {
    Manipulation = {
        Enabled = true,
        Angles = 30,
        Radius = 6,
        Direction = "Normal",
        Vector = Vector3.new(0, 0, 0)
    },
}

local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local workspace = game:GetService("Workspace")

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = 80
FOVCircle.Color = Color3.fromRGB(45, 116, 202)
FOVCircle.Visible = false

local Line = Drawing.new("Line")
Line.Color = Color3.fromRGB(255, 255, 255)
Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
Line.Thickness = 1
Line.Visible = true
Line.ZIndex = 1

local snaplineTarget = nil
local getgenv = getgenv
local getrawmetatable = getrawmetatable
local setreadonly = setreadonly
local hookmetamethod = hookmetamethod
local newcclosure = newcclosure
local identifyexecutor = identifyexecutor
local setstack = setstack
local getstack = getstack
local CFrame = CFrame
local Vector2 = Vector2
local Vector3 = Vector3
local Ray = Ray
local math = math
local task = task
local wait = wait
local debug = debug
local islclosure = islclosure
local getupvalue = debug.getupvalue
local getupvalues = debug.getupvalues
local getinfo = debug.getinfo
local getfenv = getfenv
local setfenv = setfenv
local pcall = pcall
local loadstring = loadstring
local typeof = typeof
local getgc = getgc
local pairs = pairs
local ipairs = ipairs
local table = table
local string = string
local tostring = tostring
local tonumber = tonumber
local type = type
local next = next
local unpack = unpack
local table_insert = table.insert
local table_remove = table.remove
local table_find = table.find
local table_concat = table.concat
local table_sort = table.sort
local table_pack = table.pack
local table_unpack = table.unpack
local table_maxn = table.maxn
local table_move = table.move
local table_clear = table.clear
local table_create = table.create
local table_clone = table.clone
local table_freeze = table.freeze
local table_isfrozen = table.isfrozen
local table_getn = table.getn
local table_setn = table.setn
local table_foreach = table.foreach
local table_foreachi = table.foreachi

local modules = {
    ["PlayerClient"] = {},
    ["Character"] = {},
    ["BowClient"] = {},
    ["Camera"] = {},
    ["RangedWeaponClient"] = {},
    ["GetEquippedItem"] = {},
    ["FPS"] = {},
}

for _, v in pairs(getgc(true)) do
    if typeof(v) == "function" and islclosure(v) then
        local info = getinfo(v)
        local name = string.match(info.short_src, "%.([%w_]+)$")

        if name and modules[name] and info.name ~= nil then
            modules[name][info.name] = info.func
        end
    end
end

local PlayerList = getupvalue(modules.PlayerClient.updatePlayers, 1)

local function GetPlayer()
    local closest, playerTable = nil, nil
    local closestMagnitude = math.huge
    for _, v in pairs(PlayerList or {}) do
        if v.type == "Player" and v.model:FindFirstChild("Head") and not v.sleeping then
            local PartPos, OnScreen = Camera:WorldToViewportPoint(v.model:GetPivot().Position)
            local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)).Magnitude
            local PlayerDistance = (workspace.Ignore.LocalCharacter.Middle:GetPivot().Position - v.model:GetPivot().Position).Magnitude

            if Magnitude < FOVCircle.Radius and PlayerDistance <= 9999 and Magnitude < closestMagnitude and OnScreen then
                closestMagnitude = Magnitude
                closest = v.model
                playerTable = v
            end
        end
    end
    return closest, playerTable
end

getgenv().PlayersVelocity = nil
local function updateSnapline()
    local Target, playerData = GetPlayer()
    if Target and Target:FindFirstChild("Head") then
        local headPos, onScreen = Camera:WorldToViewportPoint(Target.Head.Position)
        Line.Visible = onScreen

        if onScreen then
            Line.To = Vector2.new(headPos.X, headPos.Y)
            snaplineTarget = Target
            getgenv().PlayersVelocity = playerData.velocityVector
        else
            snaplineTarget = nil
            getgenv().PlayersVelocity = nil
        end
    else
        Line.Visible = false
        snaplineTarget = nil
        getgenv().PlayersVelocity = nil
    end
end

local CharacterList = debug.getupvalues(modules.Character.getGroundCastResult)

local function GetProjectileInfo()
    local equippedItem = CharacterList[2] and CharacterList[2].GetEquippedItem()

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

local Cam = workspace.CurrentCamera

getgenv().Predict = function(Player, Velocity)
    local PSpeed, PDrop = GetProjectileInfo()

    if PSpeed and PDrop then
        while true do
            if Player.Position then
                local Dist = (Player.Position - Cam.CFrame.Position).Magnitude

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
local StackLVL = nil

OldHook = hookmetamethod(Random.new(), "__namecall", newcclosure(function(self, ...)
    if StackLVL == nil then
        local Executor = identifyexecutor()

        if Executor == "Nihon" then
            StackLVL = 5
        elseif Executor == "Delta" then
            StackLVL = 4
        elseif Executor == "Wave" then
            StackLVL = 3
        elseif Executor == "Arceus X" then
            StackLVL = 3
        elseif Executor == "Codex" then
            StackLVL = 3
        else
            StackLVL = 3
        end
    end

    local stack = getstack(StackLVL, 4)

    if stack and getgenv().SilentEnabled and getgenv().Target and getgenv().PlayersVelocity and Config.Manipulation.Enabled then
        local targetHead = getgenv().Target.Head
        local predictedPos = getgenv().Predict(targetHead, getgenv().PlayersVelocity)

        if predictedPos then
            local targetPos = CFrame.lookAt(workspace.CurrentCamera.CFrame.p, predictedPos) * CFrame.new(Config.Manipulation.Vector)
            setstack(StackLVL, 4, targetPos)
        end
    end

    return OldHook(self, ...)
end))

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
        if getgenv().SilentEnabled and Config.Manipulation then
            local Target = GetPlayer()
            if Target and Target:FindFirstChild("Head") then
                if canHitTargetDirectly(Target) then
                    Config.Manipulation.Direction = "Normal"
                    Config.Manipulation.Vector = Vector3.new()
                else
                    local bestDirection, bestOffset = calculateBestOffset(Target)
                    if Target == nil then
                        manipBarVisible = false
                    end
                    Config.Manipulation.Direction = bestDirection
                    Config.Manipulation.Vector = bestDirection == "Normal" and Vector3.new() or bestOffset
                end
            end
        end
    end
end)

local function onRenderStepped()
    updateSnapline()
    updateTarget()
end

RunService.RenderStepped:Connect(onRenderStepped)

getgenv().SilentEnabled = true
