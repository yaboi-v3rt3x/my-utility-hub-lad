local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2-preview"))()
local hum = game.Players.LocalPlayer.Character.HumanoidRootPart

local window = Rayfield:CreateWindow({
    name = "My Utility Hub Lad",
    subtitle = "Created by yaboi_v3rt3x",
    sidebarLayout = true,
    theme = "default",
})

local homeTab = window:CreateTab({name = "Home", icon = 98755624629571})

homeTab:CreateSection({name = "Teleports", icon = 103963788475034})
local teleportsGrid = homeTab:CreateGroup()
local teleports = teleportsGrid:CreateGroup({direction = "row"})
teleports:CreateButton({
    name = "Spawn",
    callback = function()
        hum.CFrame = CFrame.new(0, 3, -2)
    end,
})
teleports:CreateButton({
    name = "Secret Room",
    callback = function()
        hum.CFrame = CFrame.new(23, 130, -4282)
    end,
})
teleports:CreateButton({
    name = "vaehz",
    callback = function()
        local vaehz = game.Players:GetPlayerByUserId(game.CreatorId)
        if vaehz then
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
    name = "Bench (Chilling vaehz)",
    callback = function()
        hum.CFrame = CFrame.new(-940, 3, -352)
    end,
})
teleports:CreateButton({
    name = "Tower (Sleeping vaehz)",
    callback = function()
        hum.CFrame = CFrame.new(-45, 29, 19)
    end,
})

homeTab:CreateSection({name = "Automation", icon = 80451686744860})
homeTab:CreateButton({
    name = "Auto-Solve Captcha",
    callback = function()
        local captchaID = game:GetService("Players").LocalPlayer.PlayerGui.captcha.Frame.CapImg.Image
        if captchaID == "rbxassetid://91155714391305" then -- Captcha #1
            game:GetService("Players").LocalPlayer.PlayerGui.captcha.Frame.Input.Text = "A5G"
        elseif captchaID == "rbxassetid://126320895376740" then -- Captcha #2
            game:GetService("Players").LocalPlayer.PlayerGui.captcha.Frame.Input.Text = "B9Z"
        elseif captchaID == "rbxassetid://117272659410984" then -- Captcha #3
            game:GetService("Players").LocalPlayer.PlayerGui.captcha.Frame.Input.Text = "2M7"
        elseif captchaID == "rbxassetid://113136907472584" then -- Captcha #4
            game:GetService("Players").LocalPlayer.PlayerGui.captcha.Frame.Input.Text = "L8P"
        elseif captchaID == "rbxassetid://104634859210887" then -- Captcha #5
            game:GetService("Players").LocalPlayer.PlayerGui.captcha.Frame.Input.Text = "948"
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
            hum.CFrame = CFrame.new(15, 130, -4270, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            wait(startWait)
            workspace.secret.PotPlant.prox.ProximityPrompt:InputHoldBegin()
            wait(workspace.secret.PotPlant.prox.ProximityPrompt.HoldDuration + 0.25)
            workspace.secret.PotPlant.prox.ProximityPrompt:InputHoldEnd()
            startWait = 0
        end
    end,
})

homeTab:CreateSection({name = "Donation", icon = 132331555762628})
homeTab:CreateButton({
    name = "Open Donation UI",
    callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.donoui.Enabled = true
    end,
})
homeTab:CreateDivider()
local TextChatService = game:GetService("TextChatService")
local DonationAnnounce = game:GetService("ReplicatedStorage"):WaitForChild("DonationAnnounce")
local RBXGeneral = (TextChatService:WaitForChild("TextChannels")):WaitForChild("RBXGeneral")
local fdp = game.Players.LocalPlayer.Name
local fda = 10
homeTab:CreateDropdown({
    name = "Fake Donation Amount",
    multiSelect = false,
    options = {"10", "50", "100", "500", "1000", "5000", "10000"},
    value = {"10"},
    callback = function(selected)
        fda = tonumber(selected)
    end,
})
homeTab:CreateButton({
    name = "Fake Donation Announcement (Client)",
    callback = function()
        RBXGeneral:DisplaySystemMessage((string.format(
            "<font color=\"#00ff00\"><b>%s just donated %d like the absolute MAD lad he is</b></font>",
            ((fdp:gsub("&", "&amp;")):gsub("<", "&lt;")):gsub(">", "&gt;"),
            fda
        )))
    end,
})

local keybindsTab = window:CreateTab({name = "Keybinds", icon = 121474456068237})
keybindsTab:CreateText({
    name = "K | SkyDrop",
    text = "Press once to initiate, press again to drop.",
})

local creditsTab = window:CreateTab({name = "Credits", icon = 124560466474914})
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
