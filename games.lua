local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Glory Hub",
	Content = "Bem-vindo ao Glory Hub.",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Window = OrionLib:MakeWindow({
	Name = "Glory Hub",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "GloryHub"
})

-- Settings Tab --
local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
	Name = "Configurações"
})

SettingsSection:AddButton({
	Name = "Destruir Interface",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

-- Scripts Tab --
local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ScriptsSection = ScriptsTab:AddSection({
	Name = "Selecione um jogo"
})

local selectedGame = nil
local currentScriptButtons = {}

-- Lista de jogos e scripts --
local games = {
    ["Anime Last Stand"] = {
        scripts = {
            {
                name = "Buang Hub",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua"))()
                end
            }
        }
    },
    ["Arise Crossover"] = {
        scripts = {
            {
                name = "Alchemy Hub",
                code = function()
                    loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
                end
            },
            {
                name = "NS Hub",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/y/refs/heads/main/hj"))()
                end
            },
            {
                name = "Solix Hub",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
                end
            },
            {
                name = "Twvz Hub (o melhor)",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua"))()
                end
            },
            {
                name = "Vermz Hub",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vermzky/VermzHub/refs/heads/main/FREE"))()
                end
            },
            {
                name = "Tora",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/AriseCrossover"))()
                end
            },
            {
                name = "Nexus Hub",
                code = function()
                    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/86de6d175e585ef6c1c7f4bdebfc57cc.lua"))()
                end
            },
            {
                name = "Gentle Hub",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/GentleScriptHub/GentleHub/refs/heads/main/Games"))()
                end
            },
            {
                name = "Speed Hub (NO KEY)",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/GentleScriptHub/GentleHub/refs/heads/main/Games"))()
                end
            },
            {
                name = "Sky Hub (NO KEY)",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/SKOIXLL/SKYLOLAND/refs/heads/main/Load.lua"))()
                end
            },
            {
                name = "Nameless 1 (No KEY)",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/IAmJamal10/Scripts/refs/heads/main/AriseCrossover"))()
                end
            },
            {
                name = "Nameless 2",
                code = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/AriseCrossover"))()
                end
            }
        }
    }
}

-- Dropdown + lista dinâmica --
local gameNames = {}
for name, _ in pairs(games) do
    table.insert(gameNames, name)
end

local function updateScriptList(gameName)
    if currentScriptButtons then
        for _, button in pairs(currentScriptButtons) do
            button:Destroy()
        end
    end
    currentScriptButtons = {}

    local gameData = games[gameName]
    if not gameData then return end

    local section = ScriptsTab:AddSection({
        Name = "Scripts para: " .. gameName
    })

    for _, script in pairs(gameData.scripts) do
        local btn = section:AddButton({
            Name = script.name,
            Callback = script.code
        })
        table.insert(currentScriptButtons, btn)
    end
end

ScriptsSection:AddDropdown({
    Name = "Escolha o jogo",
    Default = "Anime Last Stand",
    Options = gameNames,
    Callback = function(Value)
        selectedGame = Value
        updateScriptList(Value)
    end
})

OrionLib:Init()
