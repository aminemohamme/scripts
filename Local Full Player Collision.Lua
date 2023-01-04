--makes it so that you can collide with players and their limbs (Use with scripts like Snake)

RunService = game:GetService("RunService")

RunService.Stepped:Connect(function(step)
	for i,v in pairs(game.Players:GetDescendants()) do
		if v ~= game.Players.LocalPlayer and v:IsA("Player") and workspace:FindFirstChild(v.Name) then
			for i,v in pairs(workspace[v.Name]:GetDescendants()) do
				if v:IsA("Part") then
					if v.CollisionGroup ~= 0 then v.CollisionGroup = 0 end
					v.CanCollide = true
				end
			end
		end
	end
end)
