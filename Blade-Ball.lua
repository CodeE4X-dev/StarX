-- loadstring(game:HttpGet("https://raw.githubusercontent.com/CodeE4X-dev/StarX/refs/heads/main/Blade-Ball.lua", true))()

--This script is not obfuscated with luraph, but My mom obfuscated ajjdawudhaudhausdandunwud LOL im fr3akyyyyy
-- LocalScript di StarterPlayerScripts atau StarterGui

local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

-- Buat ScreenGui utama
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ModernGui"
screenGui.Parent = PlayerGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Frame utama dengan efek transparan modern
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0.3, 0, 0.4, 0)
mainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Corner radius untuk efek modern
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.05, 0)
corner.Parent = mainFrame

-- Shadow effect
local shadow = Instance.new("ImageLabel")
shadow.Name = "Shadow"
shadow.Size = UDim2.new(1, 10, 1, 10)
shadow.Position = UDim2.new(0, -5, 0, -5)
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
shadow.ImageTransparency = 0.8
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(10, 10, 118, 118)
shadow.Parent = mainFrame
shadow.ZIndex = -1

-- Judul
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(0.8, 0, 0.15, 0)
title.Position = UDim2.new(0.1, 0, 0.05, 0)
title.BackgroundTransparency = 1
title.Text = "Script DOWN! "
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = mainFrame

-- Garis dekoratif di bawah judul
local line = Instance.new("Frame")
line.Name = "Line"
line.Size = UDim2.new(0.8, 0, 0.005, 0)
line.Position = UDim2.new(0.1, 0, 0.2, 0)
line.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
line.BorderSizePixel = 0
line.Parent = mainFrame

-- Description
local desc = Instance.new("TextLabel")
desc.Name = "Description"
desc.Size = UDim2.new(0.8, 0, 0.5, 0)
desc.Position = UDim2.new(0.1, 0, 0.25, 0)
desc.BackgroundTransparency = 1
desc.Text = "Join our Discord to get updates, Limited items, and support!\n\n• Daily rewards\n• Exclusive events\n• Developer updates"
desc.TextColor3 = Color3.fromRGB(200, 200, 200)
desc.TextSize = 18
desc.TextWrapped = true
desc.Font = Enum.Font.Gotham
desc.TextXAlignment = Enum.TextXAlignment.Left
desc.TextYAlignment = Enum.TextYAlignment.Top
desc.Parent = mainFrame

-- Discord button
local discordButton = Instance.new("TextButton")
discordButton.Name = "DiscordButton"
discordButton.Size = UDim2.new(0.6, 0, 0.15, 0)
discordButton.Position = UDim2.new(0.2, 0, 0.8, 0)
discordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242) -- Warna Discord
discordButton.Text = "JOIN DISCORD"
discordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
discordButton.TextSize = 18
discordButton.Font = Enum.Font.GothamBold
discordButton.AutoButtonColor = false
discordButton.Parent = mainFrame

-- Button corner
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0.2, 0)
buttonCorner.Parent = discordButton

-- Efek hover button
discordButton.MouseEnter:Connect(function()
    game:GetService("TweenService"):Create(
        discordButton,
        TweenInfo.new(0.2),
        {BackgroundTransparency = 0.2}
    ):Play()
end)

discordButton.MouseLeave:Connect(function()
    game:GetService("TweenService"):Create(
        discordButton,
        TweenInfo.new(0.2),
        {BackgroundTransparency = 0}
    ):Play()
end)

-- Fungsi ketika button diklik (COPY TO CLIPBOARD)
discordButton.MouseButton1Click:Connect(function()
    local discordLink = "https://discord.gg/uTZRwYKHpq"
    
    -- Salin ke clipboard
    if setclipboard then
        setclipboard(discordLink)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Discord Link Copied!",
            Text = "The Discord invite link has been copied to your clipboard",
            Duration = 5,
            Icon = "rbxassetid://11240628932" -- Icon Discord (optional)
        })
    else
        -- Fallback untuk pengguna yang tidak memiliki setclipboard
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Discord",
            Text = "Join our Discord: "..discordLink,
            Duration = 5
        })
    end
end)
