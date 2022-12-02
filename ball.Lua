--fully made by me idc if you steal

workspace.Imao_96sbrother.Humanoid.PlatformStand = true
local ball = Instance.new("Part",workspace.Imao_96sbrother)
local pvector = workspace.Imao_96sbrother.HumanoidRootPart.Position
ball.Position = Vector3.new(pvector.X,pvector.Y-0.55,pvector.Z)
ball.Name = "ball"
ball.Shape = "Ball"
ball.Size = Vector3.new(6,6,6)
ball.Material = "SmoothPlastic"
ball.Transparency = 0.40
local force = Instance.new("BodyForce",ball)
local weld = Instance.new("WeldConstraint",workspace.Imao_96sbrother)
weld.Part0 = ball
weld.Part1 = workspace.Imao_96sbrother.HumanoidRootPart

while wait(0.01) do
    workspace.Imao_96sbrother.Humanoid.PlatformStand = true
	force.Force = workspace.Imao_96sbrother.Humanoid.MoveDirection * 1500
end
