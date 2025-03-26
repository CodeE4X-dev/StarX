-- loadstring(game:HttpGet("https://raw.githubusercontent.com/CodeE4X-dev/StarX/refs/heads/main/Blade-Ball.lua", true))()

--This script is not obfuscated with luraph, but My mom obfuscated ajjdawudhaudhausdandunwud LOL im fr3akyyyyy
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local JoinButton = Instance.new("TextButton")
local NotifyButton = Instance.new("TextButton")
local Dragging, DragInput, MousePos, FramePos = false, nil, nil, nil

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Active = true

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 10)

Title.Parent = Frame
Title.Size = UDim2.new(1, -40, 0, 30)
Title.Position = UDim2.new(0, 10, 0, 5)
Title.Text = "ATTENTION!!"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18

CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.BackgroundTransparency = 1
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 18

Description.Parent = Frame
Description.Size = UDim2.new(1, -20, 0, 50)
Description.Position = UDim2.new(0, 10, 0, 40)
Description.Text = "My Github Back so yall Cant Get Stealed, sorry for that. And The Most important..StarX Stopped For  a While Because, im busy, Roblox Scripting Down, me lazy, idk when starx Back But just Join Our Discord to get new updates(Leak: Later there a key, so Join Our Discord Server To Get your Free key!) "
Description.TextColor3 = Color3.fromRGB(200, 200, 200)
Description.BackgroundTransparency = 1
Description.Font = Enum.Font.SourceSans
Description.TextSize = 14
Description.TextWrapped = true

JoinButton.Parent = Frame
JoinButton.Size = UDim2.new(0, 120, 0, 30)
JoinButton.Position = UDim2.new(0.5, -60, 0, 100)
JoinButton.Text = "Join Discord"
JoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
JoinButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
JoinButton.Font = Enum.Font.SourceSansBold
JoinButton.TextSize = 16

NotifyButton.Parent = Frame
NotifyButton.Size = UDim2.new(0, 120, 0, 30)
NotifyButton.Position = UDim2.new(0.5, -60, 0, 140)
NotifyButton.Text = "Send Notification"
NotifyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NotifyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
NotifyButton.Font = Enum.Font.SourceSansBold
NotifyButton.TextSize = 16

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

JoinButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/PmUn9tE3J3")
    game.StarterGui:SetCore("SendNotification", {
        Title = "Copied",
        Text = "Discord link copied to clipboard.",
        Duration = 3
    })
end)

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = true
        MousePos = input.Position
        FramePos = Frame.Position
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        DragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == DragInput and Dragging then
        local delta = input.Position - MousePos
        Frame.Position = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + delta.X, FramePos.Y.Scale, FramePos.Y.Offset + delta.Y)
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = false
    end
end)
