local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2-preview"))()
local plr = game.Players.LocalPlayer

local window = Rayfield:CreateWindow({
    name = "My Utility Hub Lad",
    subtitle = "Created by yaboi_v3rt3x | v1103.26.1850",
    sidebarLayout = true,
    theme = "default",
})

local homeTab = window:CreateTab({ name = "Home", icon = 98755624629571 })

homeTab:CreateSection({ name = "Teleports", icon = 103963788475034 })
local mainTeleports = homeTab:CreateGroup({ direction = "row" })
mainTeleports:CreateButton({
    name = "Spawn",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(0, 3, -2)
    end,
})
mainTeleports:CreateButton({
    name = "Secret Room",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(23, 130, -4282)
    end,
})
mainTeleports:CreateButton({
    name = "Rock Paper Scissors",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-41, 38, 19, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    end,
})
mainTeleports:CreateButton({
    name = "Bomb Tag",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(0, 3, -38)
    end,
})
mainTeleports:CreateButton({
    name = "Piano",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(19.27, 3, -36.60, 1, 0, 0, 0, 1, 0, 0.26795, 0, 1)
    end,
})
mainTeleports:CreateButton({
    name = "Arena",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-37.25, 3, -26.86, 0.7, 0, 0, 0, 1, 0, -0.70, 0, 0.70)
    end,
})
mainTeleports:CreateButton({
    name = "Coffins",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-48, 4.5, 19, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end,
})
mainTeleports:CreateButton({
    name = "Idea Thinking Centre",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-16.5, 3, -72.5)
    end,
})

homeTab:CreateDivider()

local vaehzTeleports = homeTab:CreateGroup({ direction = "row" })
vaehzTeleports:CreateButton({
    name = "vaehz",
    callback = function()
        local vaehz = game.Players:GetPlayerByUserId(game.CreatorId)
        if vaehz then
            hum = plr.Character.HumanoidRootPart
            hum.CFrame = vaehz.Character.HumanoidRootPart.CFrame
        else
            window:Notify({
                title = "Teleport Error",
                content = "vaehz is not in the server!",
                duration = 5,
            })
        end
    end,
})
vaehzTeleports:CreateButton({
    name = "Cave (In Wall vaehz)",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(5.50, 3, 13.50, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end,
})
vaehzTeleports:CreateButton({
    name = "Bench (Chilling vaehz)",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-940, 3, -352, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end,
})
vaehzTeleports:CreateButton({
    name = "Tower (Sleeping vaehz)",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-45, 29, 19, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    end,
})
vaehzTeleports:CreateButton({
    name = "Lighthouse (Tiny vaehz)",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-34, 114, 53, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    end,
})

homeTab:CreateSection({ name = "Fun", icon = 97489111621526 })

homeTab:CreateButton({
    name = "Spawn Lemon (Client)",
    callback = function()
        local lemon = game.ReplicatedStorage.Lemon:Clone()
        lemon.CFrame = plr.Character.HumanoidRootPart.CFrame
        lemon.Anchored = false
        lemon:SetAttribute("MUHL", true)
        lemon.Parent = game.Workspace
    end,
})
homeTab:CreateButton({
    name = "Clear Lemons",
    callback = function()
        for i, v in game.Workspace:GetChildren() do
            if v.Name == "Lemon" then
                if v:GetAttribute("MUHL") then
                    v:Destroy()
                end
            end
        end
    end,
})

local visualTab = window:CreateTab({ name = "Visual", icon = 100033680381365 })

local function tagGradient(p)
    local g = Instance.new("UIGradient")
    g.Rotation = -45
    g.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 138, 138)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    })
    g.Transparency = NumberSequence.new(0)
    g.Parent = p
end

if not plr.Character.Head:FindFirstChild("veahzOverhead") then
	local veahzOverhead = Instance.new("BillboardGui")
	veahzOverhead.Name = "veahzOverhead"
	veahzOverhead.Size = UDim2.new(3, 0, 0.65, 0)
	veahzOverhead.StudsOffset = Vector3.new(0, 1.2, 0)
	veahzOverhead.MaxDistance = math.huge
	veahzOverhead.AlwaysOnTop = false
	veahzOverhead.LightInfluence = 0
	veahzOverhead.Adornee = plr.Character.Head
	veahzOverhead.Parent = plr.Character.Head
	veahzOverhead.Enabled = false

	local tagFrame = Instance.new("Frame")
	tagFrame.Name = "CustomOverhead"
	tagFrame.Size = UDim2.fromScale(1, 1)
	tagFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	tagFrame.BackgroundTransparency = 0.5
	tagFrame.BorderSizePixel = 0
	tagFrame.Parent = veahzOverhead

	local tagCorner = Instance.new("UICorner")
	tagCorner.CornerRadius = UDim.new(0, 4)
	tagCorner.Parent = tagFrame

	local tagStroke = Instance.new("UIStroke")
	tagStroke.Color = Color3.fromRGB(255, 0, 0)
	tagStroke.Thickness = 0.05
	tagStroke.Transparency = 0
	tagStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	tagStroke.LineJoinMode = Enum.LineJoinMode.Round
	tagStroke.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
	tagStroke.BorderStrokePosition = Enum.BorderStrokePosition.Outer
	tagStroke.Parent = tagFrame
	tagGradient(tagStroke)

	local tagUsername = Instance.new("TextLabel")
	tagUsername.Name = "username"
	tagUsername.Size = UDim2.fromScale(1, 0.45)
	tagUsername.Position = UDim2.fromScale(0, 0.1)
	tagUsername.BackgroundTransparency = 1
	tagUsername.Text = plr.Name
	tagUsername.Font = Enum.Font.SourceSansBold
	tagUsername.TextColor3 = Color3.fromRGB(255, 73, 76)
	tagUsername.TextSize = 14
	tagUsername.TextScaled = true
	tagUsername.TextWrapped = true
	tagUsername.TextStrokeColor3 = Color3.new(0, 0, 0)
	tagUsername.TextStrokeTransparency = 0
	tagUsername.Parent = tagFrame
	tagGradient(tagUsername)

	local tagDevice = Instance.new("TextLabel")
	tagDevice.Name = "device"
	tagDevice.Size = UDim2.fromScale(1, 0.35)
	tagDevice.Position = UDim2.fromScale(0, 0.536529541)
	tagDevice.BackgroundTransparency = 1
	tagDevice.Text = "linux larp"
	tagDevice.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
	tagDevice.TextColor3 = Color3.new(1, 1, 1)
	tagDevice.TextSize = 14
	tagDevice.TextScaled = true
	tagDevice.TextWrapped = true
	tagDevice.TextStrokeColor3 = Color3.new(0, 0, 0)
	tagDevice.TextStrokeTransparency = 0
	tagDevice.Parent = tagFrame

	for _, item in ipairs({{0.1, -20}, {0.9, 20}}) do
		local tagImage = Instance.new("ImageLabel")
		tagImage.Name = "ImageLabel"
		tagImage.Size = UDim2.fromScale(0.15463917, 0.75)
		tagImage.Position = UDim2.fromScale(item[1], 0.5)
		tagImage.AnchorPoint = Vector2.new(0.5, 0.5)
		tagImage.Rotation = item[2]
		tagImage.BackgroundTransparency = 1
		tagImage.Image = "rbxassetid://1769013"
		tagImage.ScaleType = Enum.ScaleType.Stretch
		tagImage.Parent = tagFrame
	end
end

local vaehzNametag = visualTab:CreateToggle({
    name = "veahz Nametag",
    value = false,
    callback = function(value)
        if value == true then
			plr.Character.Head.Overhead.Enabled = false
			plr.Character.Head.veahzOverhead.Enabled = true
		elseif value == false then
			plr.Character.Head.Overhead.Enabled = true
			plr.Character.Head.veahzOverhead.Enabled = false
		end
    end,
})

visualTab:CreateSection({ name = "Donation", icon = 132331555762628 })

visualTab:CreateButton({
    name = "Open Donation UI",
    callback = function()
        plr.PlayerGui.donoui.Enabled = true
    end,
})
visualTab:CreateDivider()
local TextChatService = game:GetService("TextChatService")
local DonationAnnounce = game:GetService("ReplicatedStorage"):WaitForChild("DonationAnnounce")
local RBXGeneral = (TextChatService:WaitForChild("TextChannels")):WaitForChild("RBXGeneral")
local fdp = plr.Name
local fda = 10
visualTab:CreateDropdown({
    name = "Fake Donation Amount",
    multiSelect = false,
    options = { "10", "50", "100", "500", "1000", "5000", "10000" },
    value = { "10" },
    callback = function(selected)
        fda = tonumber(selected)
    end,
})
visualTab:CreateButton({
    name = "Fake Donation Announcement (Client)",
    callback = function()
        RBXGeneral:DisplaySystemMessage(
            (
                string.format(
                    '<font color="#00ff00"><b>%s just donated %d like the absolute MAD lad he is</b></font>',
                    ((fdp:gsub("&", "&amp;")):gsub("<", "&lt;")):gsub(">", "&gt;"),
                    fda
                )
            )
        )
    end,
})

local automationTab = window:CreateTab({ name = "Automation", icon = 80451686744860 })

automationTab:CreateButton({
    name = "Auto-Solve Captcha",
    callback = function()
        local captchaID = plr.PlayerGui.captcha.Frame.CapImg.Image
        if captchaID == "rbxassetid://91155714391305" then -- Captcha #1
            plr.PlayerGui.captcha.Frame.Input.Text = "A5G"
        elseif captchaID == "rbxassetid://126320895376740" then -- Captcha #2
            plr.PlayerGui.captcha.Frame.Input.Text = "B9Z"
        elseif captchaID == "rbxassetid://117272659410984" then -- Captcha #3
            plr.PlayerGui.captcha.Frame.Input.Text = "2M7"
        elseif captchaID == "rbxassetid://113136907472584" then -- Captcha #4
            plr.PlayerGui.captcha.Frame.Input.Text = "L8P"
        elseif captchaID == "rbxassetid://104634859210887" then -- Captcha #5
            plr.PlayerGui.captcha.Frame.Input.Text = "948"
        else
            window:Notify({
                title = "Auto-Solve Captcha Error",
                content = "Captcha ID is not recognized, you'll have to do this 1 on your own.",
                duration = 5,
            })
        end
    end,
})
local autoWaterPlant = false
local autoWater = automationTab:CreateToggle({
    name = "Auto-Water Plant",
    value = false,
    callback = function(value)
        autoWaterPlant = value
        local startWait = 1
        while autoWaterPlant == true do
            hum = plr.Character.HumanoidRootPart
            hum.CFrame = CFrame.new(15, 130, -4270, -0.70, 0, 0.70, 0, 1, 0, -0.70, 0, -0.70)
            wait(startWait)
            workspace.secret.PotPlant.prox.ProximityPrompt:InputHoldBegin()
            wait(workspace.secret.PotPlant.prox.ProximityPrompt.HoldDuration + 0.25)
            workspace.secret.PotPlant.prox.ProximityPrompt:InputHoldEnd()
            startWait = 0
        end
        workspace.secret.PotPlant.prox.ProximityPrompt:InputHoldEnd()
    end,
})

local autoPlayRPS = false
local function checkRPS()
    if autoPlayRPS == true then
        if plr.Character.Humanoid.Sit == false then
            hum = plr.Character.HumanoidRootPart
            local rps1 = workspace.RpsGame.rps1:FindFirstChild("SeatWeld")
            local rps2 = workspace.RpsGame.rps2:FindFirstChild("SeatWeld")
            if not rps1 then
                return 1
            elseif not rps2 then
                return 2
            else
                hum.CFrame = CFrame.new(-41, 38, 19)
                wait(1)
                return checkRPS()
            end
        end
    end
    return nil
end
local autoRPS = automationTab:CreateToggle({
    name = "Auto-Play Rock Paper Scissors",
    value = false,
    callback = function(value)
        autoPlayRPS = value
        while autoPlayRPS == true do
            local check = checkRPS()
            if check then
                while plr.Character.Humanoid.Sit == false do
                    hum = plr.Character.HumanoidRootPart
                    if check == 1 then
                        hum.CFrame = CFrame.new(-48.7, 35.5, 23.5)
                    elseif check == 2 then
                        hum.CFrame = CFrame.new(-48.7, 35.5, 14.5)
                    end
                    wait(1)
                end
            end
            if plr.PlayerGui.rps.DecideScreen.Visible == true then
                local choice = math.random(1, 3)
                if choice == 1 then
                    game:GetService("ReplicatedStorage"):WaitForChild("RpsRemote"):FireServer("Choose", "Rock")
                elseif choice == 2 then
                    game:GetService("ReplicatedStorage"):WaitForChild("RpsRemote"):FireServer("Choose", "Paper")
                else
                    game:GetService("ReplicatedStorage"):WaitForChild("RpsRemote"):FireServer("Choose", "Scissors")
                end
                wait(3)
            end
            wait(1)
        end
    end,
})

local autoPlayBT = false
local function getTarget()
    local players = game.Players:GetChildren()
    local t = players[math.random(1, #game.Players:GetPlayers())]
    if t == plr then
        return getTarget()
    else
        if t:GetAttribute("InBombTag") == true then
            return t
        else
            return getTarget()
        end
    end
end
local autoBombTag = automationTab:CreateToggle({
    name = "Auto-Play Bomb Tag",
    value = false,
    callback = function(value)
        autoPlayBT = value
        if value == true then
            local Part = Instance.new("Part")
            Part.Parent = game.Workspace
            Part.Transparency = 0.5
            Part.CFrame = CFrame.new(0, 997, -2)
            Part.Name = "MUHLAPBTB"
            Part.Anchored = true
        else
            if game.Workspace:FindFirstChild("MUHLAPBTB") then
                game.Workspace.MUHLAPBTB:Destroy()
            end
        end
        while autoPlayBT == true do
            hum = plr.Character:WaitForChild("HumanoidRootPart")
            if plr.Character:FindFirstChild("BombUI") then
                if plr.Character:FindFirstChild("Timebomb") then
                    local tar = getTarget()
                    hum.CFrame = tar.Character.HumanoidRootPart.CFrame
                    plr.Character.Humanoid.Jump = true
                    wait(0.5)
                    hum.CFrame = CFrame.new(0, 1000, -2)
                else
                    hum.CFrame = CFrame.new(0, 1000, -2)
                end
            else
                hum.CFrame = CFrame.new(0, 3, -47.46)
                plr.Character.Humanoid.Jump = true
            end
            wait(1)
        end
    end,
})

automationTab:CreateButton({
    name = "Universal Auto-Piano",
    callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-UNIVERSAL-PIANO-AUTO-PLAY-41583"))()
    end,
})

local keybindsTab = window:CreateTab({ name = "Keybinds", icon = 121474456068237 })

keybindsTab:CreateText({
    name = "K | SkyDrop",
    text = "Press once to initiate, press again to drop.",
})

local creditsTab = window:CreateTab({ name = "Credits", icon = 124560466474914 })
creditsTab:CreateText({
    name = "yaboi_v3rt3x (Alt IGN: JaneSmithNPC)",
    text = "Utility Hub Creator",
})
creditsTab:CreateText({
    name = "vaehz (esoreonr)",
    text = "W Youtuber",
})
creditsTab:CreateText({
    name = "whosjackg (vaehzglazer)",
    text = "Code for vaehz Nametag (Was probably vibecoded but still)",
})
creditsTab:CreateButton({
    name = "Copy vaehz's Youtube Channel Link",
    callback = function()
        setclipboard("https://www.youtube.com/@vaehz")
        window:Notify({
            title = "Link Copied!",
            content = "vaehz's Youtube Channel Link has been set to your clipboard!",
            duration = 5,
        })
    end,
})
creditsTab:CreateButton({
    name = "Copy vaehz's Discord Server Link",
    callback = function()
        setclipboard("https://discord.com/invite/vaehz")
        window:Notify({
            title = "Link Copied!",
            content = "vaehz's Discord Server Link has been set to your clipboard!",
            duration = 5,
        })
    end,
})

creditsTab:CreateDivider()
creditsTab:CreateButton({
    name = "Unload Hub",
    callback = function()
		autoWaterPlant = false
		autoPlayRPS = false
		autoPlayBT = false
		if game.Workspace:FindFirstChild("MUHLAPBTB") then
			game.Workspace.MUHLAPBTB:Destroy()
		end
		
		if plr.Character.Head:FindFirstChild("veahzOverhead") then
			if plr.Character.Head.veahzOverhead.Enabled == true then
				plr.Character.Head.Overhead.Enabled = true
			end
			plr.Character.Head.veahzOverhead:Destroy()
		end

        window:Unload()
    end,
})
