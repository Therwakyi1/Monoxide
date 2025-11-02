local CollectionService = game:GetService("CollectionService")
local HttpService = game:GetService("HttpService")
local LogService = game:GetService("LogService")
local G2L = {}

G2L["monoxide_v2_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
G2L["monoxide_v2_1"]["Name"] = [[monoxide_v2]]
G2L["monoxide_v2_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
G2L["monoxide_v2_1"]["ResetOnSpawn"] = false

CollectionService:AddTag(G2L["monoxide_v2_1"], [[main]])

G2L["tab_2"] = Instance.new("Frame", G2L["monoxide_v2_1"])
G2L["tab_2"]["BorderSizePixel"] = 0
G2L["tab_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["tab_2"]["Size"] = UDim2.new(0.64027, 0, 0.02974, 0)
G2L["tab_2"]["Position"] = UDim2.new(0.17416, 0, 0.20821, 0)
G2L["tab_2"]["Name"] = [[tab]]

G2L["exittab_3"] = Instance.new("TextButton", G2L["tab_2"])
G2L["exittab_3"]["TextWrapped"] = true
G2L["exittab_3"]["BorderSizePixel"] = 0
G2L["exittab_3"]["TextScaled"] = true
G2L["exittab_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["exittab_3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["exittab_3"]["BackgroundTransparency"] = 1
G2L["exittab_3"]["Size"] = UDim2.new(0.01354, 0, 0.5, 0)
G2L["exittab_3"]["Text"] = [[×]]
G2L["exittab_3"]["Name"] = [[exittab]]
G2L["exittab_3"]["Position"] = UDim2.new(0.9763, 0, 0.20833, 0)

G2L["Window_4"] = Instance.new("Frame", G2L["tab_2"])
G2L["Window_4"]["BorderSizePixel"] = 0
G2L["Window_4"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201)
G2L["Window_4"]["Size"] = UDim2.new(1, 0, 16.33333, 0)
G2L["Window_4"]["Position"] = UDim2.new(0, 0, 1, 0)
G2L["Window_4"]["Name"] = [[Window]]

G2L["clear_5"] = Instance.new("TextButton", G2L["Window_4"])
G2L["clear_5"]["BorderSizePixel"] = 2
G2L["clear_5"]["TextSize"] = 14
G2L["clear_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["clear_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["clear_5"]["Size"] = UDim2.new(0.09707, 0, 0.13265, 0)
G2L["clear_5"]["Text"] = [[Clear]]
G2L["clear_5"]["Name"] = [[clear]]
G2L["clear_5"]["Position"] = UDim2.new(0.20767, 0, 0.85714, 0)

G2L["renamesave_6"] = Instance.new("TextButton", G2L["Window_4"])
G2L["renamesave_6"]["BorderSizePixel"] = 2
G2L["renamesave_6"]["TextSize"] = 14
G2L["renamesave_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["renamesave_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["renamesave_6"]["Size"] = UDim2.new(0.16027, 0, 0.13265, 0)
G2L["renamesave_6"]["Text"] = [[Rename Save]]
G2L["renamesave_6"]["Name"] = [[renamesave]]
G2L["renamesave_6"]["Position"] = UDim2.new(0.8307, 0, 0.85714, 0)

G2L["execute_7"] = Instance.new("TextButton", G2L["Window_4"])
G2L["execute_7"]["BorderSizePixel"] = 2
G2L["execute_7"]["TextSize"] = 14
G2L["execute_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["execute_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["execute_7"]["Size"] = UDim2.new(0.19187, 0, 0.13265, 0)
G2L["execute_7"]["Text"] = [[Execute]]
G2L["execute_7"]["Name"] = [[execute]]
G2L["execute_7"]["Position"] = UDim2.new(0.00903, 0, 0.85714, 0)

G2L["save_8"] = Instance.new("TextButton", G2L["Window_4"])
G2L["save_8"]["BorderSizePixel"] = 2
G2L["save_8"]["TextSize"] = 14
G2L["save_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["save_8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["save_8"]["Size"] = UDim2.new(0.08804, 0, 0.13265, 0)
G2L["save_8"]["Text"] = [[Save]]
G2L["save_8"]["Name"] = [[save]]
G2L["save_8"]["Position"] = UDim2.new(0.31151, 0, 0.85714, 0)

G2L["codebox_9"] = Instance.new("TextBox", G2L["Window_4"])
G2L["codebox_9"]["CursorPosition"] = -1
G2L["codebox_9"]["Name"] = [[codebox]]
G2L["codebox_9"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["codebox_9"]["BorderSizePixel"] = 2
G2L["codebox_9"]["TextSize"] = 11
G2L["codebox_9"]["TextYAlignment"] = Enum.TextYAlignment.Top
G2L["codebox_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["codebox_9"]["RichText"] = true
G2L["codebox_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["codebox_9"]["MultiLine"] = true
G2L["codebox_9"]["ClearTextOnFocus"] = false
G2L["codebox_9"]["ClipsDescendants"] = true
G2L["codebox_9"]["Size"] = UDim2.new(0.8149, 0, 0.82653, 0)
G2L["codebox_9"]["Position"] = UDim2.new(0.00903, 0, 0.01531, 0)
G2L["codebox_9"]["Text"] = [[-- Monoxide created by Nexus and the Instance.new Team.]]
G2L["codebox_9"]["BackgroundTransparency"] = 0.1

G2L["Output_a"] = Instance.new("Frame", G2L["Window_4"])
G2L["Output_a"]["BorderSizePixel"] = 2
G2L["Output_a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Output_a"]["Size"] = UDim2.new(0.41761, 0, 0.13265, 0)
G2L["Output_a"]["Position"] = UDim2.new(0.40632, 0, 0.85714, 0)
G2L["Output_a"]["Name"] = [[Output]]
G2L["Output_a"]["BackgroundTransparency"] = 0.1

G2L["ScrollingFrame_b"] = Instance.new("ScrollingFrame", G2L["Output_a"])
G2L["ScrollingFrame_b"]["BorderSizePixel"] = 0
G2L["ScrollingFrame_b"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
G2L["ScrollingFrame_b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["ScrollingFrame_b"]["Size"] = UDim2.new(1, 0, 1, 0)
G2L["ScrollingFrame_b"]["BackgroundTransparency"] = 1
G2L["ScrollingFrame_b"]["ScrollBarThickness"] = 0
G2L["ScrollingFrame_b"].Name = "OutputContainer" 

G2L["OutputListLayout_x"] = Instance.new("UIListLayout", G2L["ScrollingFrame_b"])
G2L["OutputListLayout_x"]["Padding"] = UDim.new(0, 2)
G2L["OutputListLayout_x"]["SortOrder"] = Enum.SortOrder.LayoutOrder

G2L["UIGradient_c"] = Instance.new("UIGradient", G2L["Window_4"])
G2L["UIGradient_c"]["Rotation"] = 90
G2L["UIGradient_c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 152, 152)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))}

G2L["SavedScripts_d"] = Instance.new("ScrollingFrame", G2L["Window_4"])
G2L["SavedScripts_d"]["BorderSizePixel"] = 2
G2L["SavedScripts_d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["SavedScripts_d"]["Name"] = [[SavedScripts]]
G2L["SavedScripts_d"]["Size"] = UDim2.new(0.1614, 0, 0.82653, 0)
G2L["SavedScripts_d"]["Position"] = UDim2.new(0.8307, 0, 0.01531, 0)
G2L["SavedScripts_d"]["ScrollBarThickness"] = 0

G2L["Script_e"] = Instance.new("TextButton", G2L["SavedScripts_d"])
G2L["Script_e"]["BorderSizePixel"] = 0
G2L["Script_e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["Script_e"]["Size"] = UDim2.new(1, 0, 0.03, 0)
G2L["Script_e"]["Text"] = [[Script1]]
G2L["Script_e"]["Name"] = [[Script]]

G2L["UIListLayout_f"] = Instance.new("UIListLayout", G2L["SavedScripts_d"])
G2L["UIListLayout_f"]["Wraps"] = true
G2L["UIListLayout_f"]["SortOrder"] = Enum.SortOrder.Custom

G2L["savedscr_10"] = Instance.new("TextLabel", G2L["SavedScripts_d"])
G2L["savedscr_10"]["BorderSizePixel"] = 0
G2L["savedscr_10"]["TextSize"] = 12
G2L["savedscr_10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["savedscr_10"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["savedscr_10"]["Size"] = UDim2.new(0, 142, 0, 32)
G2L["savedscr_10"]["Text"] = [[Saved Scripts:]]
G2L["savedscr_10"]["Name"] = [[savedscr]]

G2L["UIAspectRatioConstraint_11"] = Instance.new("UIAspectRatioConstraint", G2L["tab_2"])
G2L["UIAspectRatioConstraint_11"]["AspectRatio"] = 36.91666

G2L["tabname_12"] = Instance.new("TextLabel", G2L["tab_2"])
G2L["tabname_12"]["Interactable"] = false
G2L["tabname_12"]["BorderSizePixel"] = 0
G2L["tabname_12"]["TextSize"] = 10
G2L["tabname_12"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["tabname_12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["tabname_12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["tabname_12"]["BackgroundTransparency"] = 1
G2L["tabname_12"]["Size"] = UDim2.new(0.1693, 0, 1, 0)
G2L["tabname_12"]["Text"] = [[MONOXIDE -- V2]]
G2L["tabname_12"]["Name"] = [[tabname]]
G2L["tabname_12"]["Position"] = UDim2.new(0.0316, 0, 0, 0)

G2L["logo_13"] = Instance.new("ImageLabel", G2L["tab_2"])
G2L["logo_13"]["BorderSizePixel"] = 0
G2L["logo_13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["logo_13"]["Image"] = [[http://www.roblox.com/asset/?id=7102117818]]
G2L["logo_13"]["Size"] = UDim2.new(0.027, 0, 1, 0)
G2L["logo_13"]["BackgroundTransparency"] = 1
G2L["logo_13"]["Name"] = [[logo]]

G2L["minimizetab_14"] = Instance.new("TextButton", G2L["tab_2"])
G2L["minimizetab_14"]["TextWrapped"] = true
G2L["minimizetab_14"]["BorderSizePixel"] = 0
G2L["minimizetab_14"]["TextScaled"] = true
G2L["minimizetab_14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["minimizetab_14"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["minimizetab_14"]["BackgroundTransparency"] = 1
G2L["minimizetab_14"]["Size"] = UDim2.new(0.01354, 0, 0.5, 0)
G2L["minimizetab_14"]["Text"] = [[–]]
G2L["minimizetab_14"]["Name"] = [[minimizetab]]
G2L["minimizetab_14"]["Position"] = UDim2.new(0.95937, 0, 0.20833, 0)

G2L["UIDragDetector_15"] = Instance.new("UIDragDetector", G2L["tab_2"])

local monoxide = G2L["monoxide_v2_1"]
local tab = G2L["tab_2"]
local Window = G2L["Window_4"]
local codebox = G2L["codebox_9"]
local executeButton = G2L["execute_7"]
local clearButton = G2L["clear_5"]
local exitButton = G2L["exittab_3"]
local minimizeButton = G2L["minimizetab_14"]
local dragDetector = G2L["UIDragDetector_15"]
local saveButton = G2L["save_8"]
local renameSaveButton = G2L["renamesave_6"]
local outputScrollingFrame = G2L["ScrollingFrame_b"] 
local outputListLayout = G2L["OutputListLayout_x"]
local savedScriptsFrame = G2L["SavedScripts_d"]
local savedScriptsLabel = G2L["savedscr_10"]

local SavedScriptsData = {scripts = {}}

local CACHE_FOLDER = "MonoxideCache/" 
local DATA_STORE_KEY = CACHE_FOLDER .. "MonoxideSavedScripts" 

local messageCounter = 0 

local function consolePrint(message, messageType)
    local msgLabel = Instance.new("TextLabel")
    messageCounter = messageCounter + 1
    
    local timeString = os.date("%H:%M:%S", os.time())
    local formattedMessage = string.format("[%s] %s", timeString, message)
    
    msgLabel.Text = formattedMessage
    msgLabel.Font = Enum.Font.Code
    msgLabel.TextSize = 11
    msgLabel.TextXAlignment = Enum.TextXAlignment.Left
    msgLabel.TextWrapped = true
    
    msgLabel.Size = UDim2.new(1, 0, 0, 14) 
    msgLabel.AutomaticSize = Enum.AutomaticSize.Y 
    msgLabel.LayoutOrder = messageCounter
    
    msgLabel.BackgroundTransparency = 1
    
    local color = Color3.fromRGB(0, 0, 0) 
    if messageType == "Warning" then
        color = Color3.fromRGB(255, 170, 0) 
    elseif messageType == "Error" then
        color = Color3.fromRGB(255, 0, 0) 
    elseif messageType == "System" then
        color = Color3.fromRGB(0, 100, 0) 
    else 
        color = Color3.fromRGB(0, 0, 0) 
    end
    msgLabel.TextColor3 = color
    
    msgLabel.Parent = outputScrollingFrame
    
    task.defer(function()
        local contentHeight = outputListLayout.AbsoluteContentSize.Y
        
        outputScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)

        outputScrollingFrame.CanvasPosition = Vector2.new(0, contentHeight)
    end)
end

local function handleMessageOut(message, messageType)
    local typeString = "Output" 
    
    if messageType == Enum.MessageType.MessageError or messageType == Enum.MessageType.MessageScriptError then
        typeString = "Error"
    elseif messageType == Enum.MessageType.MessageWarning then
        typeString = "Warning"
    end
    
    consolePrint(message, typeString)
end

LogService.MessageOut:Connect(handleMessageOut)


pcall(function()
    if isfolder and not isfolder(CACHE_FOLDER) then
        if makefolder then
            makefolder(CACHE_FOLDER)
            consolePrint("Created folder: " .. CACHE_FOLDER, "System")
        end
    end
end)

pcall(function()
    if readfile then
        local success, data = pcall(function()
            local jsonString = readfile(DATA_STORE_KEY .. ".json")
            if jsonString and jsonString ~= "" then
                return HttpService:JSONDecode(jsonString)
            end
        end)
        if success and data then
            SavedScriptsData = data
            consolePrint("Loaded saved scripts from " .. DATA_STORE_KEY .. ".json", "System")
        end
    end
end)

local function saveScriptsData()
    if writefile then
        pcall(function()
            local jsonString = HttpService:JSONEncode(SavedScriptsData)
            writefile(DATA_STORE_KEY .. ".json", jsonString)
        end)
    end
end

local function saveScriptToFile(fileName, codeString)
    if writefile then
        local fullFileName = CACHE_FOLDER .. (fileName:match(".*%.%a+$") and fileName or fileName .. ".lua")
        local success, err = pcall(function()
            writefile(fullFileName, codeString)
        end)
        if success then
            consolePrint("Code saved to file: " .. fullFileName, "System")
        else
            consolePrint("Error saving to file: " .. tostring(err), "Error")
        end
        return success
    else
        consolePrint("writefile() is not available in this environment.", "Error")
        return false
    end
end

local function safeExecute(code)
	local chunk, err = loadstring(code)
	
	if chunk then
		pcall(chunk) 
	else
		consolePrint("Compilation Error: " .. tostring(err), "Error")
	end
end

local function updateSavedScriptsList()
    for _, child in pairs(savedScriptsFrame:GetChildren()) do
        if child:IsA("TextButton") and child ~= savedScriptsLabel then
            child:Destroy()
        end
    end
    
    local yPosition = 40
    
    for name, scriptData in pairs(SavedScriptsData.scripts) do
        local scriptButton = Instance.new("TextButton")
        scriptButton.Name = "Saved_" .. name
        scriptButton.Text = name
        scriptButton.Size = UDim2.new(1, 0, 0, 30)
        scriptButton.Position = UDim2.new(0, 0, 0, yPosition)
        scriptButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        scriptButton.BorderSizePixel = 0
        scriptButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        scriptButton.TextSize = 12
        scriptButton.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        
        scriptButton.MouseButton1Click:Connect(function()
            codebox.Text = scriptData.code
            consolePrint("Loaded script: " .. name, "System")
        end)
        
        local deleteButton = Instance.new("TextButton")
        deleteButton.Name = "Delete"
        deleteButton.Text = "×"
        deleteButton.Size = UDim2.new(0, 20, 0, 20)
        deleteButton.Position = UDim2.new(1, -25, 0, 5)
        deleteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        deleteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        deleteButton.TextSize = 10
        deleteButton.Parent = scriptButton
        
        deleteButton.MouseButton1Click:Connect(function()
            SavedScriptsData.scripts[name] = nil
            saveScriptsData()
            updateSavedScriptsList()
            consolePrint("Deleted script: " .. name, "System")
        end)
        
        scriptButton.Parent = savedScriptsFrame
        yPosition = yPosition + 35
    end
    
    savedScriptsFrame.CanvasSize = UDim2.new(0, 0, 0, yPosition)
end

local function createSavePopup()
    local popup = Instance.new("Frame")
    popup.Size = UDim2.new(0, 300, 0, 200) 
    popup.Position = UDim2.new(0.5, -150, 0.5, -100)
    popup.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
    popup.BorderSizePixel = 2 
    popup.BorderColor3 = Color3.fromRGB(0, 0, 0)
    popup.ZIndex = 10
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Position = UDim2.new(0, 0, 0, 5)
    title.BackgroundTransparency = 1
    title.Text = "Save Script"
    title.TextColor3 = Color3.fromRGB(0, 0, 0)
    title.TextSize = 14
    title.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    title.Parent = popup
    
    local nameBox = Instance.new("TextBox")
    nameBox.Size = UDim2.new(0, 260, 0, 30)
    nameBox.Position = UDim2.new(0.5, -130, 0, 40)
    nameBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    nameBox.BorderSizePixel = 2
    nameBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    nameBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    nameBox.PlaceholderText = "Enter script name (for JSON save)..."
    nameBox.TextSize = 12
    nameBox.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    nameBox.Parent = popup

    local fileBox = Instance.new("TextBox")
    fileBox.Size = UDim2.new(0, 260, 0, 30)
    fileBox.Position = UDim2.new(0.5, -130, 0, 80)
    fileBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    fileBox.BorderSizePixel = 2
    fileBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    fileBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    fileBox.PlaceholderText = "Enter file name (for file save)..."
    fileBox.TextSize = 12
    fileBox.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    fileBox.Parent = popup
    
    local saveJsonBtn = Instance.new("TextButton")
    saveJsonBtn.Size = UDim2.new(0, 120, 0, 30)
    saveJsonBtn.Position = UDim2.new(0, 10, 0, 120)
    saveJsonBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    saveJsonBtn.BorderSizePixel = 2
    saveJsonBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    saveJsonBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
    saveJsonBtn.Text = "Save to JSON"
    saveJsonBtn.TextSize = 14
    saveJsonBtn.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    saveJsonBtn.Parent = popup

    local saveFileBtn = Instance.new("TextButton")
    saveFileBtn.Size = UDim2.new(0, 120, 0, 30)
    saveFileBtn.Position = UDim2.new(0, 170, 0, 120)
    saveFileBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    saveFileBtn.BorderSizePixel = 2
    saveFileBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    saveFileBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
    saveFileBtn.Text = "Save to File"
    saveFileBtn.TextSize = 14
    saveFileBtn.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    saveFileBtn.Parent = popup
    
    local cancelBtn = Instance.new("TextButton")
    cancelBtn.Size = UDim2.new(0, 260, 0, 30)
    cancelBtn.Position = UDim2.new(0, 20, 0, 160)
    cancelBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    cancelBtn.BorderSizePixel = 2
    cancelBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    cancelBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
    cancelBtn.Text = "Cancel"
    cancelBtn.TextSize = 14
    cancelBtn.FontFace = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    cancelBtn.Parent = popup
    
    popup.Parent = Window
    
    local function closePopup()
        popup:Destroy()
    end

    saveJsonBtn.MouseButton1Click:Connect(function()
        local scriptName = nameBox.Text
        if scriptName and scriptName ~= "" then
            local scriptText = codebox.Text
            SavedScriptsData.scripts[scriptName] = {
                code = scriptText,
                timestamp = os.time()
            }
            saveScriptsData()
            updateSavedScriptsList()
            consolePrint("Saved script to JSON: " .. scriptName, "System")
            closePopup()
        else
            consolePrint("JSON Save Error: Script name cannot be empty.", "Error")
        end
    end)
    
    saveFileBtn.MouseButton1Click:Connect(function()
        local fileName = fileBox.Text
        if fileName and fileName ~= "" then
            local scriptText = codebox.Text
            if saveScriptToFile(fileName, scriptText) then
                closePopup()
            end
        else
            consolePrint("File Save Error: File name cannot be empty.", "Error")
        end
    end)
    
    cancelBtn.MouseButton1Click:Connect(closePopup)
end

local function onExecuteClicked()
	local code = codebox.Text
	if code and code:len() > 0 and code ~= "-- Monoxide created by Nexus and the Instance.new Team." then
		safeExecute(code)
	end
end

local function onClearClicked()
	codebox.Text = ""
    
    for _, child in pairs(outputScrollingFrame:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end
    messageCounter = 0
    outputScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
end

local function onExitClicked()
	monoxide.Enabled = false
end

local function onMinimizeClicked()
	Window.Visible = not Window.Visible
end

local function onSaveClicked()
    local scriptText = codebox.Text
    if scriptText and scriptText ~= "" and scriptText ~= "-- Monoxide created by Nexus and the Instance.new Team." then
        createSavePopup()
    else
        consolePrint("Cannot save empty script", "Error")
    end
end

executeButton.MouseButton1Click:Connect(onExecuteClicked)
clearButton.MouseButton1Click:Connect(onClearClicked)
exitButton.MouseButton1Click:Connect(onExitClicked)
minimizeButton.MouseButton1Click:Connect(onMinimizeClicked)
saveButton.MouseButton1Click:Connect(onSaveClicked)

if dragDetector then
	local startPosition
	
	dragDetector.DragStart:Connect(function()
		startPosition = tab.Position
	end)
	
	dragDetector.DragChanged:Connect(function(_, delta)
		local newXOffset = startPosition.X.Offset + delta.X
		local newYOffset = startPosition.Y.Offset + delta.Y
		
		tab.Position = UDim2.new(0, newXOffset, 0, newYOffset)
		startPosition = tab.Position
	end)
end

if codebox.Text == "-- Monoxide created by Nexus and the Instance.new Team." then
	codebox.Text = ""
end

updateSavedScriptsList()

return G2L["monoxide_v2_1"], require

-- ts took me WAY too long
