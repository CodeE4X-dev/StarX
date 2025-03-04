--<>--<>--<>--<>--Trade Request
local TradeFunction = game.ReplicatedStorage.Trade:WaitForChild("SendRequest")

-- Fungsi untuk mengirim permintaan trade ke pemain target
function sendTradeRequest(targetPlayer)
    if targetPlayer and targetPlayer:IsA("Player") then
        local success = TradeFunction:InvokeServer(targetPlayer)
        if success then
            print("Trade request sent to:", targetPlayer.Name)
        else
            print("Trade request failed!")
        end
    else
        print("Invalid target player!")
    end
end

-- Contoh penggunaan: Kirim trade request ke pemain dengan nama "Player1"
local targetPlayer = game.Players:FindFirstChild("Player1")
sendTradeRequest(targetPlayer)

--<>--<>--<>--<>--Request Accept

game:GetService("ReplicatedStorage"):WaitForChild("Trade"):WaitForChild("AcceptRequest"):FireServer()


--<>--<>--<>--<>--Trade Accept
local args = {
    [1] = 285646582
}

game:GetService("ReplicatedStorage"):WaitForChild("Trade"):WaitForChild("AcceptTrade"):FireServer(unpack(args))


--<>--<>--<>--<>--Trade Item(add)
local args = {
    [1] = "Chromatic_G_2023",
    [2] = "Weapons"
}

game:GetService("ReplicatedStorage"):WaitForChild("Trade"):WaitForChild("OfferItem"):FireServer(unpack(args))



--------------//////////////////Structure
---Weapons Structur
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local Container = PlayerGui:WaitForChild("MainGUI")
    :WaitForChild("Game")
    :WaitForChild("Crafting")
    :WaitForChild("Inventory")
    :WaitForChild("Salvage")
    :WaitForChild("ScrollFrame")
    :WaitForChild("Container")

print("Container ditemukan:", Container)
