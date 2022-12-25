--this script will teleport you to a booth when one becomes unclaimed
while wait() do
    for i,v in pairs (workspace:GetDescendants()) do
        if v.Name == "Description" and v.Text == "Click here to rent this booth" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.Parent.Position)
            vbreak = true
        end
    end
    if vbreak == true then break end
end
