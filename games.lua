-- Glory Portal Loader v5 — com categorias visíveis corrigidas e UI aprimorada
local UIS = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local GameSearch = Instance.new("TextBox")
local CategoryList = Instance.new("ScrollingFrame")
local ContentArea = Instance.new("ScrollingFrame")
local InfoBox = Instance.new("TextLabel")
local ScriptSearch = Instance.new("TextBox")
local CloseButton = Instance.new("TextButton")
local RejoinButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "GloryPortal"

Frame.Size = UDim2.new(0, 600, 0, 350)
Frame.Position = UDim2.new(0.5, -300, 0.5, -175)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true
UICorner:Clone().Parent = Frame
UIStroke:Clone().Parent = Frame

Title.Text = "🌟 Glory Portal"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.Parent = Frame
UICorner:Clone().Parent = Title

local function createButton(text, size, position, bgColor, textColor, parent)
    local btn = Instance.new("TextButton")
    btn.Text = text
    btn.Size = size
    btn.Position = position
    btn.BackgroundColor3 = bgColor
    btn.TextColor3 = textColor
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 20
    btn.Parent = parent
    UICorner:Clone().Parent = btn
    return btn
end

CloseButton = createButton("✖", UDim2.new(0, 30, 0, 30), UDim2.new(1, -35, 0, 0), Color3.fromRGB(40, 40, 40), Color3.fromRGB(255, 80, 80), Frame)
RejoinButton = createButton("♻", UDim2.new(0, 30, 0, 30), UDim2.new(1, -70, 0, 0), Color3.fromRGB(40, 40, 40), Color3.fromRGB(80, 255, 80), Frame)
local MinimizeButton = createButton("➖", UDim2.new(0, 30, 0, 30), UDim2.new(1, -105, 0, 0), Color3.fromRGB(40, 40, 40), Color3.fromRGB(255, 255, 255), Frame)

local resizeTweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad)
local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    local goal = minimized and UDim2.new(0, 200, 0, 30) or UDim2.new(0, 600, 0, 350)
    TweenService:Create(Frame, resizeTweenInfo, {Size = goal}):Play()
    ContentArea.Visible = not minimized
    CategoryList.Visible = not minimized
    GameSearch.Visible = not minimized
    ScriptSearch.Visible = not minimized
    InfoBox.Visible = not minimized
    Title.Text = minimized and "🌟" or "🌟 Glory Portal"
    MinimizeButton.Text = minimized and "➕" or "➖"
end)

GameSearch.PlaceholderText = "🔎"
GameSearch.Size = UDim2.new(0, 160, 0, 25)
GameSearch.Position = UDim2.new(0, 10, 0, 40)
GameSearch.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
GameSearch.TextColor3 = Color3.fromRGB(255, 255, 255)
GameSearch.Font = Enum.Font.Gotham
GameSearch.TextSize = 16
GameSearch.Parent = Frame
UICorner:Clone().Parent = GameSearch
UIStroke:Clone().Parent = GameSearch
GameSearch.Text = ""

CategoryList.Size = UDim2.new(0, 160, 0, 260)
CategoryList.Position = UDim2.new(0, 10, 0, 70)
CategoryList.BackgroundTransparency = 1
CategoryList.ScrollBarThickness = 4
CategoryList.CanvasSize = UDim2.new(0, 0, 0, 600)
CategoryList.ScrollingEnabled = true
CategoryList.Parent = Frame

ContentArea.Size = UDim2.new(0, 400, 0, 260)
ContentArea.Position = UDim2.new(0, 180, 0, 70)
ContentArea.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ContentArea.ScrollBarThickness = 4
ContentArea.CanvasSize = UDim2.new(0, 0, 0, 600)
ContentArea.ScrollingEnabled = true
ContentArea.Parent = Frame
UICorner:Clone().Parent = ContentArea
UIStroke:Clone().Parent = ContentArea

InfoBox.Text = "+ Glory Portal — select a script to run."
InfoBox.Size = UDim2.new(1, 0, 0, 35)
InfoBox.Position = UDim2.new(0, 0, 0, 0)
InfoBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InfoBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InfoBox.Font = Enum.Font.Gotham
InfoBox.TextSize = 16
InfoBox.TextWrapped = true
InfoBox.TextYAlignment = Enum.TextYAlignment.Center
InfoBox.Parent = ContentArea
UICorner:Clone().Parent = InfoBox

ScriptSearch.PlaceholderText = "🔎"
ScriptSearch.Size = UDim2.new(0, 380, 0, 25)
ScriptSearch.Position = UDim2.new(0, 10, 0, 40)
ScriptSearch.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ScriptSearch.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptSearch.Font = Enum.Font.Gotham
ScriptSearch.TextSize = 16
ScriptSearch.Parent = ContentArea
UICorner:Clone().Parent = ScriptSearch
UIStroke:Clone().Parent = ScriptSearch
ScriptSearch.Text = ""

local scripts = {
    ["Arise Crossover"] = {
        ["TWVZ HUB"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua"))()'
    },
    ["Deepwoken"] = {
        ["ZYG HUB"] = 'loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'
    },
    ["Ro Ghoul"] = {
        ["SIGNAL HUB"] = 'loadstring(game:HttpGet("https://rawscripts.net/raw/Ro-Ghoul-ALPHA-Signal-Hub-23257"))()'
    },
    ["Ghoul Re"] = {
        ["ZYG HUB"] = 'loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'
    },
    ["Anime Last Stand"] = {
        ["BUANGERS HUB"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua"))()'
    },
    ["Rune Slayer"] = {
        ["ZYG HUB"] = 'loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'
    },
    ["Fisch"] = {
        ["ZYG HUB"] = 'loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'
    },
    ["Mountfall"] = {
        ["ZYG HUB"] = 'loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'
    },
    ["Giant Simulator"] = {
        ["SIGNAL HUB"] = 'loadstring(game:HttpGet("https://rawscripts.net/raw/GiantSimulatorSignalHub_44088"))()'
    },
    ["Mushyo / Universal Mic"] = {
        ["KSX HUB"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ksx1s/ksx-s/refs/heads/main/Panel"))()'
    }
}


local emojiButtons = {CloseButton, RejoinButton, MinimizeButton}
local tooltips = {"Exit", "Rejoin", "Minimize"}
for i, btn in ipairs(emojiButtons) do
    btn.MouseEnter:Connect(function()
        InfoBox.Text = tooltips[i]
    end)
    btn.MouseLeave:Connect(function()
        InfoBox.Text = "+ Glory Portal — select a script to run."
    end)
end

local function loadScriptsForCategory(category)
    ContentArea.CanvasSize = UDim2.new(0, 0, 0, 600)
    for _, child in ipairs(ContentArea:GetChildren()) do
        if child:IsA("TextButton") and child.Name ~= "InfoBox" and child.Name ~= "ScriptSearch" then
            child:Destroy()
        end
    end
    local yOffset = 70
    for scriptName, scriptCode in pairs(scripts[category] or {}) do
        local scriptButton = Instance.new("TextButton")
        scriptButton.Text = scriptName
        scriptButton.Size = UDim2.new(0, 380, 0, 30)
        scriptButton.Position = UDim2.new(0, 10, 0, yOffset)
        scriptButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        scriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        scriptButton.Font = Enum.Font.Gotham
        scriptButton.TextSize = 18
        scriptButton.Parent = ContentArea
        scriptButton.Name = "ScriptButton"
        UICorner:Clone().Parent = scriptButton
        scriptButton.MouseButton1Click:Connect(function()
            InfoBox.Text = "Executando " .. scriptName .. "..."
            loadstring(scriptCode)()
        end)
        yOffset = yOffset + 40
    end
    ContentArea.CanvasSize = UDim2.new(0, 0, 0, yOffset + 20)
end

local function loadCategories()
    CategoryList.CanvasSize = UDim2.new(0, 0, 0, 600)
    for _, child in ipairs(CategoryList:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    local yOffset = 0
    for categoryName, _ in pairs(scripts) do
        local categoryButton = Instance.new("TextButton")
        categoryButton.Text = categoryName
        categoryButton.Size = UDim2.new(1, -10, 0, 30)
        categoryButton.Position = UDim2.new(0, 5, 0, yOffset)
        categoryButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        categoryButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        categoryButton.Font = Enum.Font.Gotham
        categoryButton.TextSize = 16
        categoryButton.Parent = CategoryList
        UICorner:Clone().Parent = categoryButton
        categoryButton.MouseButton1Click:Connect(function()
            loadScriptsForCategory(categoryName)
        end)
        yOffset = yOffset + 40
    end
    CategoryList.CanvasSize = UDim2.new(0, 0, 0, yOffset + 10)
end

GameSearch:GetPropertyChangedSignal("Text"):Connect(function()
    local searchText = string.lower(GameSearch.Text)
    for _, button in ipairs(CategoryList:GetChildren()) do
        if button:IsA("TextButton") then
            local match = string.find(string.lower(button.Text), searchText)
            button.Visible = match ~= nil
        end
    end
end)

ScriptSearch:GetPropertyChangedSignal("Text"):Connect(function()
    local searchText = string.lower(ScriptSearch.Text)
    for _, button in ipairs(ContentArea:GetChildren()) do
        if button:IsA("TextButton") and button.Name == "ScriptButton" then
            local match = string.find(string.lower(button.Text), searchText)
            button.Visible = match ~= nil
        end
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
RejoinButton.MouseButton1Click:Connect(function()
    TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

loadCategories()

-- Discord Tab
local DiscordInvite = "https://discord.gg/TEsUuKfK6P"
local discordTab = window:Tab("Discord")

discordTab:Button("Copy Discord Invite", function()
    setclipboard(DiscordInvite)

    local CoreGui = game:GetService("CoreGui")
    local NotificationGui = Instance.new("ScreenGui")
    NotificationGui.Name = "DiscordNotification"
    NotificationGui.ResetOnSpawn = false
    NotificationGui.Parent = CoreGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 300, 0, 80)
    Frame.Position = UDim2.new(1, -310, 1, -120)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.BorderSizePixel = 0
    Frame.BackgroundTransparency = 0.1
    Frame.AnchorPoint = Vector2.new(0, 0)
    Frame.Parent = NotificationGui

    local UICorner = Instance.new("UICorner", Frame)
    UICorner.CornerRadius = UDim.new(0, 8)

    local Title = Instance.new("TextLabel")
    Title.Text = "Discord Invite Copied!"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 18
    Title.Font = Enum.Font.GothamSemibold
    Title.Position = UDim2.new(0, 10, 0, 5)
    Title.Size = UDim2.new(1, -20, 0, 25)
    Title.BackgroundTransparency = 1
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = Frame

    local Invite = Instance.new("TextLabel")
    Invite.Text = DiscordInvite
    Invite.TextColor3 = Color3.fromRGB(170, 170, 255)
    Invite.TextSize = 16
    Invite.Font = Enum.Font.Gotham
    
