local FOVCircle = Drawing.new("Circle")
FOVCircle.Visible = true
FOVCircle.Radius = 180
FOVCircle.Thickness = 2
FOVCircle.Filled = false
FOVCircle.Color = Color3.fromRGB(255, 255, 255)
FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

local snapLine = Drawing.new("Line")
snapLine.Visible = false
snapLine.Color = Color3.fromRGB(255, 255, 255)
snapLine.Thickness = 1

local runService = game:GetService("RunService")
local Classes = getrenv()._G.classes
local CameraClient = Classes.Camera
local FPSClient = Classes.FPS
local Camera = cloneref(game:GetService("Workspace").CurrentCamera)

local validGuns = {
    "AR15", "C9", "Crossbow", "Bow", "EnergyRifle", "GaussRifle",
    "HMAR", "KABAR", "LeverActionRifle", "M4A1", "PipePistol",
    "PipeSMG", "PumpShotgun", "SCAR", "SVD", "USP9", "UZI", "Blunderbuss"
}

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
