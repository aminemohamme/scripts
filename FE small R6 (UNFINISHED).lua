--made by rouxhaver/1+1=2
--THIS SCRIPT IS UNFINISHED
--click to move only for now

--REQUIRED items:
--https://www.roblox.com/catalog/2492679490/City-Life-Woman-Head
--https://www.roblox.com/catalog/48474313/Red-Roblox-Cap
--https://www.roblox.com/catalog/62724852/Chestnut-Bun
--https://www.roblox.com/catalog/451220849/Lavender-Updo
--https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
--https://www.roblox.com/catalog/63690008/Pal-Hair
--https://www.roblox.com/catalog/62234425/Brown-Hair

--(MAKE SURE that when you spawn in that all of your accessorys scale down, if they don't then reset until they do)

player = game.Players.LocalPlayer
char = player.Character
if char.Hat1.Handle.Size.X == 1 then do
    char.Humanoid.Health = 0
    message = Instance.new("Message",workspace)
    message.Text = "Your Hats/Hair have not scaled, please execute script again."
    wait(4)
    message:Destroy()
end else
player.Character.Archivable = true
body = player.Character:Clone()
body.Name = "clone"
body.Parent = workspace

for i,v in pairs(body:GetChildren()) do
    if v:IsA("Accessory") then v:Destroy() end
    if v:IsA("Part") then v.Transparency = 1 end
end
body.Head.face:Destroy()

player.Character = body
wait(3)
player.Character = char
wait(3)

for i,v in pairs(char:GetChildren()) do
    if v:IsA("Part") and v.Name ~= "Head" and v.Name ~= "HumanoidRootPart" then
        v:Destroy()
    end
end

body.Head.CanCollide = false

function weld(hat,limb,off)
    hat.Handle.Mesh:Destroy()
    hat.Handle.AccessoryWeld:Destroy()
    local weld = Instance.new("RopeConstraint",player.Character)
    weld.Length = math.huge
    weld.Attachment0 = Instance.new("Attachment",char.Head)
    weld.Attachment1 = Instance.new("Attachment",hat.Handle)
    coroutine.wrap(function()
        while task.wait() do
            hat.Handle.CFrame = (limb.CFrame + limb.CFrame.RightVector * off) * CFrame.Angles(math.rad(90),0,0)
            if vbreak == true then break end
        end
    end)()
end

weld(char.Hat1,body["Right Arm"],0)
weld(char["Pink Hair"],body["Left Arm"],0)
weld(char.LavanderHair,body["Left Leg"],0)
weld(char.Robloxclassicred,body["Right Leg"],0)
weld(char["Pal Hair"],body["Torso"],0.25)
weld(char["Kate Hair"],body["Torso"],-0.25)

walk = body.Humanoid.Animator:LoadAnimation(body.Animate.run.RunAnim)
idle = body.Humanoid.Animator:LoadAnimation(body.Animate.idle.Animation1)
idle:Play()

Mouse = player:GetMouse()
Mouse.Button1Up:Connect(function()
    idle:Stop()
    walk:Play()
    body.Humanoid:MoveTo(Mouse.Hit.p)
    body.Humanoid.MoveToFinished:Wait()
    walk:Stop()
    idle:Play()
end)

D = 1.8
for i,v in pairs(body:GetChildren()) do
    if v.Name ~= "HumanoidRootPart" and v.Name ~= "Head" and v:IsA("Part") then
        v.Size = v.Size / Vector3.new(D,D,D)
    end
end
for i,v in pairs(body.Torso:GetChildren()) do
    if v:IsA("Motor6D") then
        v.C0 = CFrame.new(v.C0.X/D,v.C0.Y/D,v.C0.Z/D) * v.C0.Rotation
        v.C1 = CFrame.new(v.C1.X/D,v.C1.Y/D,v.C1.Z/D) * v.C1.Rotation
    end
end

body.Torso.Neck.C0 = body.Torso.Neck.C0 + Vector3.new(0,0.15,0)
char.HumanoidRootPart.Size = Vector3.new(0.1,0.1,0.1)
body.HumanoidRootPart.Size = Vector3.new(2,2,1)


resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    player.Character = body
    vbreak = true
end)


game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

body.Humanoid.HipHeight = -0.2

loadstring(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/random-sh-t/main/Credit"))()

while task.wait() do
    if vbreak == true then break end
    char.Head.CFrame = body.Head.CFrame
    char.HumanoidRootPart.CFrame = body.Head.CFrame + Vector3.new(0,0.5,0)
end
end
