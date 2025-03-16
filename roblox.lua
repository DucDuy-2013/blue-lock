print(game.PlaceId)

if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DucDuy-2013/fisch/refs/heads/main/bloxfruit.lua"))()
elseif game.PlaceId == 16732694052 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DucDuy-2013/fisch/refs/heads/main/fisch.lua"))()
elseif game.PlaceId == 18668065416 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DucDuy-2013/blue-lock/refs/heads/main/bluelock.lua"))()
else
    local function createWarningGui()
        local screenGui = Instance.new("ScreenGui")
        screenGui.Parent = game.Players.LocalPlayer.PlayerGui

        local frame = Instance.new("Frame")
        frame.Parent = screenGui
        frame.Size = UDim2.new(0, 400, 0, 200)
        frame.Position = UDim2.new(0.5, -200, 0.5, -100)
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        frame.BorderSizePixel = 3
        frame.BorderColor3 = Color3.fromRGB(255, 255, 255)

        local textLabel = Instance.new("TextLabel")
        textLabel.Parent = frame
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.Text = "Game của bạn không phải Blox Fruit, Fisch hay Blue Lock Rivals. Vui lòng sử dụng script khác!"
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        textLabel.TextSize = 24
        textLabel.TextWrapped = true
        textLabel.BackgroundTransparency = 1

        local closeButton = Instance.new("TextButton")
        closeButton.Parent = frame
        closeButton.Size = UDim2.new(0, 40, 0, 40)
        closeButton.Position = UDim2.new(1, -40, 0, 0)
        closeButton.Text = "X"
        closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

        closeButton.MouseButton1Click:Connect(function()
            screenGui:Destroy()
        end)
    end

    createWarningGui()
end
