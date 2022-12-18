--stupidly simple
while task.wait() do
    for i,v in pairs(Workspace:GetDescendants()) do
        if v.Name:match("Barrier") then v:Destroy() end
    end
end
