local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
local textLabel = Instance.new("TextLabel")

screenGui.Parent = player:FindFirstChildOfClass("PlayerGui")

textLabel.Parent = screenGui
textLabel.Size = UDim2.new(0.5, 0, 0.1, 0)
textLabel.Position = UDim2.new(0.25, 0, 0.45, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 0, 0)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold


local executor = "Unknown"

if getexecutorname then
    executor = getexecutorname() 
elseif identifyexecutor then
    executor = identifyexecutor()
end

textLabel.Text = "This Script not support " .. executor
