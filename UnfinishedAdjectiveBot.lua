-- made by rouxhaver/1+1=2
-- this is unfinished; i want to add a little more to this and this WILL be updated soon

YourWebhook = "https://discord.com/api/webhooks/" -- REQUIRED discord webhook if you want to record responses
adjectives = string.split(game:HttpGet("https://raw.githubusercontent.com/rouxhaver/random-sh-t/main/ADJECTIVESGOTDAMMIT.txt"),"\n") -- my list of adjectives

local function say(text)
	getgenv().Text = text
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(getgenv().Text,"All")
end


TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
function teleport()
	wait(5)
    if httprequest then
    		local servers = {}
    		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)})
    		local body = HttpService:JSONDecode(req.Body)
	    	if body and body.data then
	    		for i, v in next, body.data do
	    			if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
	    				table.insert(servers, 1, v.id)
	       			end 
	    		end
	    	end
	    	if #servers > 0 then
	    		TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    		else
                player:Kick("only one server lol")
	    	end
	end
end



local success, result_from_second_function = xpcall(function()

say("injection Complete, script ran successfully")
wait(5)

local PathfindingService = game:GetService("PathfindingService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local path = PathfindingService:CreatePath({
	AgentCanJump = true,
	AgentCanClimb = true,
    AgentRadius = 5,
	AgentHeight = 7
})

local player = Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")

player.Character.Humanoid.AutoRotate = false

local waypoints
local nextWaypointIndex
local reachedConnection
local blockedConnection

pause = false
vbreak = false
waypoints = {}

interest = ""

local function followPath(destination)
    pathing = true
	-- Compute the path
	local success, errorMessage = pcall(function()
		path:ComputeAsync(character.PrimaryPart.Position, destination)
	end)
	if success and path.Status == Enum.PathStatus.Success then
		-- Get the path waypoints
		waypoints = path:GetWaypoints()

        coroutine.wrap(function() 
		    for i, v in pairs(waypoints) do
                if vbreak == true then break end
			    player.Character.Humanoid:MoveTo(v.Position)
			    if v.Action == Enum.PathWaypointAction.Jump then player.Character.Humanoid.Jump = true end
               player.Character.Humanoid.MoveToFinished:Wait()
	    	end
		    pause = false
            pathing = false
        end)()
	else
		player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(workspace[interest].PrimaryPart.Position)
        pause = false
        pathing = false
	end
end




otherplayers = {"Imao_96"}
pnext = false







paused = true

local ReplicatedStorage = game:FindService("ReplicatedStorage")
local ChatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents")
local OnMessageEvent = ChatEvents:WaitForChild("OnMessageDoneFiltering")
local SayMessageRequest = ChatEvents:WaitForChild("SayMessageRequest")

if not SayMessageRequest:IsA("RemoteEvent") or not OnMessageEvent:IsA("RemoteEvent") then return end

local ChatLegth = require(game:FindService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings")).MaximumMessageLength

contun = false
contun2 = false
count2 = 1
WebHooked = ""
skipdd = false

OnMessageEvent.OnClientEvent:Connect(function(data)
    if not data then return end
    if paused == false then
    local player1 = tostring(data.FromSpeaker)
    if player1 == interest then  
    local message = tostring(data.Message)
    if (message):len() <= (ChatLegth-7) then
        WebHooked = ".\n"..player.Name..": \""..generatedmessage.."\",\n"..WebHooked..message.."\""
        lowered = string.lower(message)
        if lowered:match("thank") or lowered:match("ty") or lowered:match("you too") or lowered:match("you to") or lowered:match("thx") then
            WebHooked = WebHooked.."\n"..player.Name..": \"Your welcome\""
            say("Your welcome")
            wait(2)
        end
        pnext = true
end end end 
end)
count1 = 0
count69 = 0

for i,v in pairs(game.Players:GetDescendants()) do
    paused = true
    interest = v.Name
    if v ~= player then
    if workspace:FindFirstChild(interest) ~= nil then
    if v.ClassName == "Player" then
        WebHooked = v.Name..": \""
        while true do
            pposition = workspace[interest]:WaitForChild("HumanoidRootPart").Position + Vector3.new(math.random(-5,5),0,math.random(-5,5))
            followPath(pposition)
            while pathing == true do
            if count69 == 100 then 
                player.Character.Humanoid.Jump = true
                count69 = 0
            end

            if workspace:FindFirstChild(interest) ~= nil then 
               game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.lookAt(player.Character.HumanoidRootPart.Position, Vector3.new(workspace[interest].HumanoidRootPart.Position.X, player.Character.HumanoidRootPart.Position.Y, workspace[interest].HumanoidRootPart.Position.Z))
            end

            wait(0.01)
            count69 = count69 + 1
            end

            difference = workspace[interest].HumanoidRootPart.Position.X - player.Character.HumanoidRootPart.Position.X
            if difference < 0 then difference = difference * -1 end
        
            if difference < 10 and difference > 0 then
                break
            end
            difference = workspace[interest].HumanoidRootPart.Position.Z - player.Character.HumanoidRootPart.Position.Z
            if difference < 0 then difference = difference * -1 end

            if difference < 10 and difference > 0 then
                break
            end
        end

        count69 = 0
        if workspace:FindFirstChild(interest) ~= nil then

        if math.random(1,3) == 1 then do
        generatedmessage = "Hello "..game.Players[interest].DisplayName..", you are looking very "..adjectives[math.random(1,#adjectives)].." today"
        end elseif math.random(1,2) == 1 then do
        generatedmessage = "Wow "..game.Players[interest].DisplayName..", you are looking extremely "..adjectives[math.random(1,#adjectives)].." today"
        end else
        generatedmessage = "Not gonna lie "..game.Players[interest].DisplayName..", you look kinda "..adjectives[math.random(1,#adjectives)].." today"
        end

        say(generatedmessage)
        paused = false
        while pnext == false do wait(0.01)
            if workspace:FindFirstChild(interest) == nil or count1 == 1000 then 
                skipdd = true
                break 
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.lookAt(player.Character.HumanoidRootPart.Position, Vector3.new(workspace[interest].HumanoidRootPart.Position.X, player.Character.HumanoidRootPart.Position.Y, workspace[interest].HumanoidRootPart.Position.Z))
            count1 = count1 + 1
            
            difference = workspace[interest].HumanoidRootPart.Position.X - player.Character.HumanoidRootPart.Position.X
            if difference < 0 then difference = difference * -1 end
        
            if difference > 10 and difference > 0 then
                pnext = true
                skipdd = true
            end

            difference = workspace[interest].HumanoidRootPart.Position.Z - player.Character.HumanoidRootPart.Position.Z
            if difference < 0 then difference = difference * -1 end
        
            if difference > 10 and difference > 0 then
                pnext = true
                skipdd = true
            end

        end
        count2 = 1
        count1 = 0
        pnext = false
        if skipdd == false then
            local WebHook     = YourWebhook
            local HTTPService = game:GetService("HttpService")
            request({
                   Url = WebHook,
                   Method = "POST",
                   Headers = {
                       ["Content-Type"] = "application/json"
                   },
                   Body = game.HttpService:JSONEncode({
                       content = WebHooked
                  })
             })
        end
        skipdd = false
    end
    end
    end
    end
end

say("Data collected, Transferring servers...")

    teleport()
end

,function(err)
	print(err)
    say("Error: "..err)
	return err
end)
