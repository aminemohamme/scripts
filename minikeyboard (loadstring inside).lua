--LoadString here:
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/scripts/main/minikeyboard%20(loadstring%20inside).lua"))()
--Made by rouxhaver/1+1+2













if game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui") then
    game.Players.LocalPlayer.PlayerGui.TouchGui.TouchControlFrame.DynamicThumbstickFrame:Destroy()
end

local mobilekeys = Instance.new("ScreenGui")
local back = Instance.new("Frame")
local W = Instance.new("TextButton")
local S = Instance.new("TextButton")
local D = Instance.new("TextButton")
local A = Instance.new("TextButton")
local E = Instance.new("TextButton")
local Q = Instance.new("TextButton")
local credit = Instance.new("TextLabel")


mobilekeys.Name = "mobile keys"
mobilekeys.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
mobilekeys.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
mobilekeys.ResetOnSpawn = false

back.Name = "back"
back.Parent = mobilekeys
back.BackgroundColor3 = Color3.fromRGB(109, 109, 109)
back.BackgroundTransparency = 1.000
back.BorderColor3 = Color3.fromRGB(0, 0, 0)
back.BorderSizePixel = 3
back.Position = UDim2.new(0.0653172135, 0, 0.492602825, 0)
back.Size = UDim2.new(0.370000005, 0, 0.366506726, 0)

W.Name = "W"
W.Parent = back
W.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
W.BackgroundTransparency = 0.700
W.BorderColor3 = Color3.fromRGB(0, 0, 0)
W.BorderSizePixel = 3
W.Position = UDim2.new(0.333999991, 0, 0.00855317526, 0)
W.Size = UDim2.new(0.333000004, 0, 0.492635697, 0)
W.Font = Enum.Font.SourceSans
W.Text = "W"
W.TextColor3 = Color3.fromRGB(0, 0, 0)
W.TextScaled = true
W.TextSize = 14.000
W.TextWrapped = true
W.BorderMode = "Inset"

S.Name = "S"
S.Parent = back
S.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
S.BackgroundTransparency = 0.700
S.BorderColor3 = Color3.fromRGB(0, 0, 0)
S.BorderSizePixel = 3
S.Position = UDim2.new(0.333999991, 0, 0.501999974, 0)
S.Size = UDim2.new(0.333000004, 0, 0.492635697, 0)
S.Font = Enum.Font.SourceSans
S.Text = "S"
S.TextColor3 = Color3.fromRGB(0, 0, 0)
S.TextScaled = true
S.TextSize = 14.000
S.TextWrapped = true
S.BorderMode = "Inset"

D.Name = "D"
D.Parent = back
D.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
D.BackgroundTransparency = 0.700
D.BorderColor3 = Color3.fromRGB(0, 0, 0)
D.BorderSizePixel = 3
D.Position = UDim2.new(0.666999996, 0, 0.501999974, 0)
D.Size = UDim2.new(0.333000004, 0, 0.492635697, 0)
D.Font = Enum.Font.SourceSans
D.Text = "D"
D.TextColor3 = Color3.fromRGB(0, 0, 0)
D.TextScaled = true
D.TextSize = 14.000
D.TextWrapped = true
D.BorderMode = "Inset"

A.Name = "A"
A.Parent = back
A.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
A.BackgroundTransparency = 0.700
A.BorderColor3 = Color3.fromRGB(0, 0, 0)
A.BorderSizePixel = 3
A.Position = UDim2.new(0.00100000005, 0, 0.501999974, 0)
A.Size = UDim2.new(0.333000004, 0, 0.492635697, 0)
A.Font = Enum.Font.SourceSans
A.Text = "A"
A.TextColor3 = Color3.fromRGB(0, 0, 0)
A.TextScaled = true
A.TextSize = 14.000
A.TextWrapped = true
A.BorderMode = "Inset"

E.Name = "E"
E.Parent = back
E.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
E.BackgroundTransparency = 0.700
E.BorderColor3 = Color3.fromRGB(0, 0, 0)
E.BorderSizePixel = 3
E.Position = UDim2.new(0.666999996, 0, 0.00855317526, 0)
E.Size = UDim2.new(0.333000004, 0, 0.492635697, 0)
E.Font = Enum.Font.SourceSans
E.Text = "E"
E.TextColor3 = Color3.fromRGB(0, 0, 0)
E.TextScaled = true
E.TextSize = 14.000
E.TextWrapped = true
E.BorderMode = "Inset"

Q.Name = "Q"
Q.Parent = back
Q.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Q.BackgroundTransparency = 0.700
Q.BorderColor3 = Color3.fromRGB(0, 0, 0)
Q.BorderSizePixel = 3
Q.Position = UDim2.new(0.00100000005, 0, 0.00855317526, 0)
Q.Size = UDim2.new(0.333000004, 0, 0.492635697, 0)
Q.Font = Enum.Font.SourceSans
Q.Text = "Q"
Q.TextColor3 = Color3.fromRGB(0, 0, 0)
Q.TextScaled = true
Q.TextSize = 14.000
Q.TextWrapped = true
Q.BorderMode = "Inset"

credit.Name = "credit"
credit.Parent = mobilekeys
credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credit.BackgroundTransparency = 1.000
credit.Position = UDim2.new(0.294136018, 0, 0.93736589, 0)
credit.Size = UDim2.new(0.408796281, 0, 0.0618429221, 0)
credit.Font = Enum.Font.SourceSans
credit.Text = "Mobile keyboard made by rouxhaver"
credit.TextColor3 = Color3.fromRGB(0, 0, 0)
credit.TextScaled = true
credit.TextSize = 14.000
credit.TextWrapped = true

local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()

W.MouseButton1Down:Connect(function()
    virtualUser:SetKeyDown('0x77')
end)
W.MouseButton1Up:Connect(function()
    virtualUser:SetKeyUp('0x77')
end)

A.MouseButton1Down:Connect(function()
    virtualUser:SetKeyDown('0x41')
end)
A.MouseButton1Up:Connect(function()
    virtualUser:SetKeyUp('0x41')
end)

A.MouseButton1Down:Connect(function()
    virtualUser:SetKeyDown('0x61')
end)
A.MouseButton1Up:Connect(function()
    virtualUser:SetKeyUp('0x61')
end)

S.MouseButton1Down:Connect(function()
    virtualUser:SetKeyDown('0x73')
end)
S.MouseButton1Up:Connect(function()
    virtualUser:SetKeyUp('0x73')
end)

D.MouseButton1Down:Connect(function()
    virtualUser:SetKeyDown('0x64')
end)
D.MouseButton1Up:Connect(function()
    virtualUser:SetKeyUp('0x64')
end)

Q.MouseButton1Down:Connect(function()
    virtualUser:SetKeyDown('0x71')
end)
Q.MouseButton1Up:Connect(function()
    virtualUser:SetKeyUp('0x71')
end)

E.MouseButton1Down:Connect(function()
    virtualUser:SetKeyDown('0x65')
end)
E.MouseButton1Up:Connect(function()
    virtualUser:SetKeyUp('0x65')
end)
