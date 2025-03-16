local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
screenGui.Name = "HubSelector"

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.fromRGB(255, 255, 255)

local function createButton(text, position, onClick)
    local button = Instance.new("TextButton")
    button.Parent = frame
    button.Size = UDim2.new(0, 260, 0, 40)
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderSizePixel = 1
    button.BorderColor3 = Color3.fromRGB(255, 255, 255)
    
    button.MouseButton1Click:Connect(function()
        print("Chạy script cho Hub: " .. text)
        screenGui:Destroy()
        onClick()
    end)
    
    return button
end

createButton("Sterling Hub", UDim2.new(0, 20, 0, 20), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DucDuy-2013/blue-lock/refs/heads/main/sterling.lua"))()
end)

createButton("Bill Dev Hub", UDim2.new(0, 20, 0, 70), function()
    loadstring(game:HttpGet("loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BLRTBDKEYSYS",true))()"))()
end)

game:BindToClose(function()
    screenGui:Destroy()
end)
