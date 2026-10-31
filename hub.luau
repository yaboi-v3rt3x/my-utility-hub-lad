local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2-preview"))()
local plr = game.Players.LocalPlayer

local window = Rayfield:CreateWindow({
    name = "My Utility Hub Lad",
    subtitle = "Created by yaboi_v3rt3x",
    sidebarLayout = true,
    theme = "default",
})

local homeTab = window:CreateTab({ name = "Home", icon = 98755624629571 })

homeTab:CreateSection({ name = "Teleports", icon = 103963788475034 })
local teleportsGrid = homeTab:CreateGroup()
local teleports = teleportsGrid:CreateGroup({ direction = "row" })
teleports:CreateButton({
    name = "Spawn",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(0, 3, -2)
    end,
})
teleports:CreateButton({
    name = "Secret Room",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(23, 130, -4282)
    end,
})
teleports:CreateButton({
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
teleports:CreateButton({
    name = "Rock Paper Scissors",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-41, 38, 19)
    end,
})
teleports:CreateButton({
    name = "Bomb Tag",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(0, 3, -38)
    end,
})
teleports:CreateButton({
    name = "Piano",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(19.27, 3, -36.60)
    end,
})
teleports:CreateButton({
    name = "Arena",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-37.25, 3, -26.86)
    end,
})
teleports:CreateButton({
    name = "Bench (Chilling vaehz)",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-940, 3, -352)
    end,
})
teleports:CreateButton({
    name = "Tower (Sleeping vaehz)",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-45, 29, 19)
    end,
})
teleports:CreateButton({
    name = "Coffins",
    callback = function()
        hum = plr.Character.HumanoidRootPart
        hum.CFrame = CFrame.new(-48, 4.5, 19)
    end,
})

homeTab:CreateSection({ name = "Automation", icon = 80451686744860 })
homeTab:CreateButton({
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
local autoWater = homeTab:CreateToggle({
    name = "Auto-Water Plant",
    value = false,
    callback = function(value)
        autoWaterPlant = value
        local startWait = 1
        while autoWaterPlant == true do
            hum = plr.Character.HumanoidRootPart
            hum.CFrame = CFrame.new(15, 130, -4270)
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
local autoRPS = homeTab:CreateToggle({
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
local autoBombTag = homeTab:CreateToggle({
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
            if game.Workspace.MUHLAPBTB then
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

homeTab:CreateButton({
    name = "Universal Auto-Piano",
    callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-UNIVERSAL-PIANO-AUTO-PLAY-41583"))()
    end,
})

homeTab:CreateSection({ name = "Donation", icon = 132331555762628 })
homeTab:CreateButton({
    name = "Open Donation UI",
    callback = function()
        plr.PlayerGui.donoui.Enabled = true
    end,
})
homeTab:CreateDivider()
local TextChatService = game:GetService("TextChatService")
local DonationAnnounce = game:GetService("ReplicatedStorage"):WaitForChild("DonationAnnounce")
local RBXGeneral = (TextChatService:WaitForChild("TextChannels")):WaitForChild("RBXGeneral")
local fdp = plr.Name
local fda = 10
homeTab:CreateDropdown({
    name = "Fake Donation Amount",
    multiSelect = false,
    options = { "10", "50", "100", "500", "1000", "5000", "10000" },
    value = { "10" },
    callback = function(selected)
        fda = tonumber(selected)
    end,
})
homeTab:CreateButton({
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

local keybindsTab = window:CreateTab({ name = "Keybinds", icon = 121474456068237 })
keybindsTab:CreateText({
    name = "K | SkyDrop",
    text = "Press once to initiate, press again to drop.",
})

local creditsTab = window:CreateTab({ name = "Credits", icon = 124560466474914 })
creditsTab:CreateText({
    name = "yaboi_v3rt3x",
    text = "Utility Hub Creator",
})
creditsTab:CreateText({
    name = "vaehz (esoreonr)",
    text = "W Youtuber",
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
        window:Unload()
    end,
})
