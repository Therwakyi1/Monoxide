do
    local I = Instance.new
    local C = Color3.fromRGB
    local U = UDim2.new
    local S = UDim.new 
    local F = Font.new
    
    local CollectionService = game:GetService("CollectionService")
    local HttpService = game:GetService("HttpService")
    local LogService = game:GetService("LogService")
    local CoreGui = game:GetService("CoreGui") 
    local UserInputService = game:GetService("UserInputService")
    
    local FILE_SYSTEM_SUPPORT = {
        readfile = false,
        writefile = false,
        isfolder = false,
        makefolder = false
    }

    FILE_SYSTEM_SUPPORT.readfile = pcall(function() local x = readfile end) and readfile ~= nil
    FILE_SYSTEM_SUPPORT.writefile = pcall(function() local x = writefile end) and writefile ~= nil
    FILE_SYSTEM_SUPPORT.isfolder = pcall(function() local x = isfolder end) and isfolder ~= nil
    FILE_SYSTEM_SUPPORT.makefolder = pcall(function() local x = makefolder end) and makefolder ~= nil

    local function runCode()
        local ui = I("ScreenGui", CoreGui)
        ui.Name = "monoxide_v2"
        ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ui.ResetOnSpawn = false
        CollectionService:AddTag(ui, "main")

        local tab = I("Frame", ui)
        tab.BorderSizePixel = 0
        tab.BackgroundColor3 = C(255, 255, 255)
        tab.Size = U(0.64027, 0, 0.02974, 0)
        tab.Position = U(0.17416, 0, 0.20821, 0)
        tab.Name = "tab"

        local exitBtn = I("TextButton", tab)
        exitBtn.TextWrapped = true
        exitBtn.BorderSizePixel = 0
        exitBtn.TextScaled = true
        exitBtn.BackgroundColor3 = C(255, 255, 255)
        exitBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        exitBtn.BackgroundTransparency = 1
        exitBtn.Size = U(0.01354, 0, 0.5, 0)
        exitBtn.Text = "×"
        exitBtn.Name = "exittab"
        exitBtn.Position = U(0.9763, 0, 0.20833, 0)

        local window = I("Frame", tab)
        window.BorderSizePixel = 0
        window.BackgroundColor3 = C(201, 201, 201)
        window.Size = U(1, 0, 16.33333, 0)
        window.Position = U(0, 0, 1, 0)
        window.Name = "Window"

        local clearBtn = I("TextButton", window)
        clearBtn.BorderSizePixel = 2
        clearBtn.TextSize = 14
        clearBtn.BackgroundColor3 = C(255, 255, 255)
        clearBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        clearBtn.Size = U(0.09707, 0, 0.13265, 0)
        clearBtn.Text = "Clear"
        clearBtn.Name = "clear"
        clearBtn.Position = U(0.20767, 0, 0.85714, 0)

        local renameSaveBtn = I("TextButton", window)
        renameSaveBtn.BorderSizePixel = 2
        renameSaveBtn.TextSize = 14
        renameSaveBtn.BackgroundColor3 = C(255, 255, 255)
        renameSaveBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        renameSaveBtn.Size = U(0.16027, 0, 0.13265, 0)
        renameSaveBtn.Text = "Rename Save"
        renameSaveBtn.Name = "renamesave"
        renameSaveBtn.Position = U(0.8307, 0, 0.85714, 0)

        local executeBtn = I("TextButton", window)
        executeBtn.BorderSizePixel = 2
        executeBtn.TextSize = 14
        executeBtn.BackgroundColor3 = C(255, 255, 255)
        executeBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        executeBtn.Size = U(0.19187, 0, 0.13265, 0)
        executeBtn.Text = "Execute"
        executeBtn.Name = "execute"
        executeBtn.Position = U(0.00903, 0, 0.85714, 0)

        local saveBtn = I("TextButton", window)
        saveBtn.BorderSizePixel = 2
        saveBtn.TextSize = 14
        saveBtn.BackgroundColor3 = C(255, 255, 255)
        saveBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        saveBtn.Size = U(0.08804, 0, 0.13265, 0)
        saveBtn.Text = "Save"
        saveBtn.Name = "save"
        saveBtn.Position = U(0.31151, 0, 0.85714, 0)

        local codeBox = I("TextBox", window)
        codeBox.CursorPosition = -1
        codeBox.Name = "codebox"
        codeBox.TextXAlignment = Enum.TextXAlignment.Left
        codeBox.BorderSizePixel = 2
        codeBox.TextSize = 11
        codeBox.TextYAlignment = Enum.TextYAlignment.Top
        codeBox.BackgroundColor3 = C(255, 255, 255)
        codeBox.RichText = true
        codeBox.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        codeBox.MultiLine = true
        codeBox.ClearTextOnFocus = false
        codeBox.ClipsDescendants = true
        codeBox.Size = U(0.8149, 0, 0.82653, 0)
        codeBox.Position = U(0.00903, 0, 0.01531, 0)
        codeBox.Text = "-- Monoxide created by Nexus and the Instance.new Team."
        codeBox.BackgroundTransparency = 0.1

        local outputFrame = I("Frame", window)
        outputFrame.BorderSizePixel = 2
        outputFrame.BackgroundColor3 = C(255, 255, 255)
        outputFrame.Size = U(0.41761, 0, 0.13265, 0)
        outputFrame.Position = U(0.40632, 0, 0.85714, 0)
        outputFrame.Name = "Output"
        outputFrame.BackgroundTransparency = 0.1

        local outputScroll = I("ScrollingFrame", outputFrame)
        outputScroll.BorderSizePixel = 0
        outputScroll.CanvasSize = U(0, 0, 0, 0)
        outputScroll.BackgroundColor3 = C(255, 255, 255)
        outputScroll.Size = U(1, 0, 1, 0)
        outputScroll.BackgroundTransparency = 1
        outputScroll.ScrollBarThickness = 0
        outputScroll.Name = "OutputContainer" 

        local outputListLayout = I("UIListLayout", outputScroll)
        outputListLayout.Padding = S(0, 2)
        outputListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        local gradient = I("UIGradient", window)
        gradient.Rotation = 90
        gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, C(152, 152, 152)),ColorSequenceKeypoint.new(1.000, C(255, 255, 255))}

        local savedScriptsFrame = I("ScrollingFrame", window)
        savedScriptsFrame.BorderSizePixel = 2
        savedScriptsFrame.BackgroundColor3 = C(255, 255, 255)
        savedScriptsFrame.Name = "SavedScripts"
        savedScriptsFrame.Size = U(0.1614, 0, 0.82653, 0)
        savedScriptsFrame.Position = U(0.8307, 0, 0.01531, 0)
        savedScriptsFrame.ScrollBarThickness = 0

        local scriptListLayout = I("UIListLayout", savedScriptsFrame)
        scriptListLayout.Wraps = true
        scriptListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        scriptListLayout.Padding = S(0, 2) 

        local savedScriptsLabel = I("TextLabel", savedScriptsFrame)
        savedScriptsLabel.BorderSizePixel = 0
        savedScriptsLabel.TextSize = 12
        savedScriptsLabel.BackgroundColor3 = C(255, 255, 255)
        savedScriptsLabel.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        savedScriptsLabel.Size = U(1, 0, 0, 20)
        savedScriptsLabel.Text = "Saved Scripts:"
        savedScriptsLabel.Name = "savedscr"
        
        local ratio = I("UIAspectRatioConstraint", tab)
        ratio.AspectRatio = 36.91666

        local tabName = I("TextLabel", tab)
        tabName.Interactable = false
        tabName.BorderSizePixel = 0
        tabName.TextSize = 10
        tabName.TextXAlignment = Enum.TextXAlignment.Left
        tabName.BackgroundColor3 = C(255, 255, 255)
        tabName.FontFace = F("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        tabName.BackgroundTransparency = 1
        tabName.Size = U(0.1693, 0, 1, 0)
        tabName.Text = "MONOXIDE -- V2"
        tabName.Name = "tabname"
        tabName.Position = U(0.0316, 0, 0, 0)

        local logo = I("ImageLabel", tab)
        logo.BorderSizePixel = 0
        logo.BackgroundColor3 = C(255, 255, 255)
        logo.Image = "http://www.roblox.com/asset/?id=7102117818"
        logo.Size = U(0.027, 0, 1, 0)
        logo.BackgroundTransparency = 1
        logo.Name = "logo"

        local minimizeBtn = I("TextButton", tab)
        minimizeBtn.TextWrapped = true
        minimizeBtn.BorderSizePixel = 0
        minimizeBtn.TextScaled = true
        minimizeBtn.BackgroundColor3 = C(255, 255, 255)
        minimizeBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        minimizeBtn.BackgroundTransparency = 1
        minimizeBtn.Size = U(0.01354, 0, 0.5, 0)
        minimizeBtn.Text = "–"
        minimizeBtn.Name = "minimizetab"
        minimizeBtn.Position = U(0.95937, 0, 0.20833, 0)

        local SavedScriptsData = {scripts = {}}

        local CACHE_FOLDER = "MonoxideCache/" 
        local DATA_STORE_KEY = CACHE_FOLDER .. "MonoxideSavedScripts" 

        local messageCounter = 0 
        
        local function dragify(Frame)
            local dragging
            local dragStart
            local startPos
            
            Frame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    dragStart = input.Position
                    startPos = Frame.Position
                end
            end)
            
            Frame.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                end
            end)
            
            UserInputService.InputChanged:Connect(function(input)
                if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    local Delta = input.Position - dragStart
                    Frame.Position = U(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                end
            end)
        end
        
        dragify(tab)

        local function consolePrint(message, messageType)
            local msgLabel = I("TextLabel")
            messageCounter = messageCounter + 1
            
            local timeString = os.date("%H:%M:%S", os.time())
            local formattedMessage = string.format("[%s] %s", timeString, message)
            
            msgLabel.Text = formattedMessage
            msgLabel.Font = Enum.Font.Code
            msgLabel.TextSize = 11
            msgLabel.TextXAlignment = Enum.TextXAlignment.Left
            msgLabel.TextWrapped = true
            
            msgLabel.Size = U(1, 0, 0, 14) 
            msgLabel.AutomaticSize = Enum.AutomaticSize.Y 
            msgLabel.LayoutOrder = messageCounter
            
            msgLabel.BackgroundTransparency = 1
            
            local color = C(0, 0, 0) 
            if messageType == "Warning" then
                color = C(255, 170, 0) 
            elseif messageType == "Error" then
                color = C(255, 0, 0) 
            elseif messageType == "System" then
                color = C(0, 100, 0) 
            else 
                color = C(0, 0, 0) 
            end
            msgLabel.TextColor3 = color
            
            msgLabel.Parent = outputScroll
            
            task.defer(function()
                local contentHeight = outputListLayout.AbsoluteContentSize.Y
                outputScroll.CanvasSize = U(0, 0, 0, contentHeight)
                outputScroll.CanvasPosition = Vector2.new(0, contentHeight)
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

        local function saveScriptsData()
            if FILE_SYSTEM_SUPPORT.writefile then
                pcall(function()
                    local jsonString = HttpService:JSONEncode(SavedScriptsData) 
                    writefile(DATA_STORE_KEY .. ".json", jsonString)
                    consolePrint("Successfully attempted to save data to JSON file.", "System")
                end)
            else
                consolePrint("Warning: writefile() is unavailable. Data persistence disabled.", "Warning")
            end
        end

        local function saveScriptToFile(fileName, codeString)
            if FILE_SYSTEM_SUPPORT.writefile then
                local ext = fileName:match("%.%a+$")
                if not ext then
                    fileName = fileName .. ".luau"
                end
                local fullFileName = CACHE_FOLDER .. fileName
                
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
                consolePrint("writefile() is not available. File saving is disabled.", "Error")
                return false
            end
        end
        
        -- Removed safeExecute as per request, replacing its functionality in onExecuteClicked
        
        local function updateSavedScriptsList()
            for _, child in pairs(savedScriptsFrame:GetChildren()) do
                if child.Name:match("^Container_") then 
                    child:Destroy()
                end
            end
            
            local scriptNames = {}
            for name, _ in pairs(SavedScriptsData.scripts) do
                table.insert(scriptNames, name)
            end
            table.sort(scriptNames)
            
            for i, name in ipairs(scriptNames) do
                local scriptData = SavedScriptsData.scripts[name]
                
                local scriptContainer = I("Frame")
                scriptContainer.Name = "Container_" .. name
                scriptContainer.Size = U(1, 0, 0, 25) 
                scriptContainer.BackgroundTransparency = 1 
                scriptContainer.Parent = savedScriptsFrame
                
                local horizontalLayout = I("UIListLayout", scriptContainer)
                horizontalLayout.FillDirection = Enum.FillDirection.Horizontal
                horizontalLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
                horizontalLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                
                local scriptButton = I("TextButton")
                scriptButton.Name = "Saved_" .. name
                scriptButton.Text = name
                scriptButton.TextXAlignment = Enum.TextXAlignment.Left
                scriptButton.Size = U(0.8, 0, 1, 0)
                scriptButton.BackgroundColor3 = C(255, 255, 255)
                scriptButton.BackgroundTransparency = 1 
                scriptButton.BorderSizePixel = 0 
                scriptButton.TextColor3 = C(0, 0, 0)
                scriptButton.TextSize = 12
                scriptButton.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                scriptButton.Parent = scriptContainer
                
                local deleteButton = I("TextButton")
                deleteButton.Name = "Delete"
                deleteButton.Text = "×"
                deleteButton.Size = U(0.2, 0, 1, 0)
                deleteButton.BackgroundColor3 = C(255, 50, 50)
                deleteButton.BackgroundTransparency = 1 
                deleteButton.BorderSizePixel = 0 
                deleteButton.TextColor3 = C(255, 0, 0) 
                deleteButton.TextSize = 14
                deleteButton.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                deleteButton.Parent = scriptContainer

                scriptButton.MouseButton1Click:Connect(function()
                    codeBox.Text = scriptData.code
                    consolePrint("Loaded script: " .. name, "System")
                end)
                
                deleteButton.MouseButton1Click:Connect(function()
                    if SavedScriptsData.scripts[name] then
                        SavedScriptsData.scripts[name] = nil 
                        saveScriptsData() 
                        updateSavedScriptsList() 
                        consolePrint("Deleted script: " .. name, "System")
                    end
                end)
            end
            
            task.defer(function()
                local contentHeight = scriptListLayout.AbsoluteContentSize.Y
                savedScriptsFrame.CanvasSize = U(0, 0, 0, contentHeight)
            end)
        end

        local function createSavePopup()
            local scriptText = codeBox.Text
            if not scriptText or scriptText == "" or scriptText == "-- Monoxide created by Nexus and the Instance.new Team." then
                consolePrint("Cannot save empty script", "Error")
                return
            end
            
            local popup = I("Frame")
            popup.Size = U(0, 300, 0, 200) 
            popup.Position = U(0.5, -150, 0.5, -100)
            popup.BackgroundColor3 = C(255, 255, 255) 
            popup.BorderSizePixel = 2 
            popup.BorderColor3 = C(0, 0, 0)
            popup.ZIndex = 10
            
            local title = I("TextLabel")
            title.Size = U(1, 0, 0, 30)
            title.Position = U(0, 0, 0, 5)
            title.BackgroundTransparency = 1
            title.Text = "Save Script"
            title.TextColor3 = C(0, 0, 0)
            title.TextSize = 14
            title.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            title.Parent = popup
            
            local nameBox = I("TextBox")
            nameBox.Size = U(0, 260, 0, 30)
            nameBox.Position = U(0.5, -130, 0, 40)
            nameBox.BackgroundColor3 = C(255, 255, 255)
            nameBox.BorderSizePixel = 2
            nameBox.BorderColor3 = C(0, 0, 0)
            nameBox.TextColor3 = C(0, 0, 0)
            nameBox.PlaceholderText = "Enter script name (for JSON save)..."
            nameBox.TextSize = 12
            nameBox.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            nameBox.Parent = popup

            local fileBox = I("TextBox")
            fileBox.Size = U(0, 260, 0, 30)
            fileBox.Position = U(0.5, -130, 0, 80)
            fileBox.BackgroundColor3 = C(255, 255, 255)
            fileBox.BorderSizePixel = 2
            fileBox.BorderColor3 = C(0, 0, 0)
            fileBox.TextColor3 = C(0, 0, 0)
            fileBox.PlaceholderText = "Enter file name (will use .luau)..."
            fileBox.TextSize = 12
            fileBox.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            fileBox.Parent = popup
            
            local saveJsonBtn = I("TextButton")
            saveJsonBtn.Size = U(0, 120, 0, 30)
            saveJsonBtn.Position = U(0, 10, 0, 120)
            saveJsonBtn.BackgroundColor3 = C(255, 255, 255)
            saveJsonBtn.BorderSizePixel = 2
            saveJsonBtn.BorderColor3 = C(0, 0, 0)
            saveJsonBtn.TextColor3 = C(0, 0, 0)
            saveJsonBtn.Text = "Save to JSON"
            saveJsonBtn.TextSize = 14
            saveJsonBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            saveJsonBtn.Parent = popup

            local saveFileBtn = I("TextButton")
            saveFileBtn.Size = U(0, 120, 0, 30)
            saveFileBtn.Position = U(0, 170, 0, 120)
            saveFileBtn.BackgroundColor3 = C(255, 255, 255)
            saveFileBtn.BorderSizePixel = 2
            saveFileBtn.BorderColor3 = C(0, 0, 0)
            saveFileBtn.TextColor3 = C(0, 0, 0)
            saveFileBtn.Text = "Save to File"
            saveFileBtn.TextSize = 14
            saveFileBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            saveFileBtn.Parent = popup
            
            local cancelBtn = I("TextButton")
            cancelBtn.Size = U(0, 260, 0, 30)
            cancelBtn.Position = U(0, 20, 0, 160)
            cancelBtn.BackgroundColor3 = C(255, 255, 255)
            cancelBtn.BorderSizePixel = 2
            cancelBtn.BorderColor3 = C(0, 0, 0)
            cancelBtn.TextColor3 = C(0, 0, 0)
            cancelBtn.Text = "Cancel"
            cancelBtn.TextSize = 14
            cancelBtn.FontFace = F("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            cancelBtn.Parent = popup
            
            popup.Parent = window
            
            local function closePopup()
                popup:Destroy()
            end

            saveJsonBtn.MouseButton1Click:Connect(function()
                local scriptName = nameBox.Text
                if scriptName and scriptName ~= "" then
                    local scriptText = codeBox.Text
                    SavedScriptsData.scripts[scriptName] = {
                        code = scriptText,
                        timestamp = os.time()
                    }
                    saveScriptsData() 
                    updateSavedScriptsList()
                    consolePrint("Saved script to internal JSON table.", "System")
                    closePopup()
                else
                    consolePrint("JSON Save Error: Script name cannot be empty.", "Error")
                end
            end)
            
            saveFileBtn.MouseButton1Click:Connect(function()
                local fileName = fileBox.Text
                if fileName and fileName ~= "" then
                    local scriptText = codeBox.Text
                    if saveScriptToFile(fileName, scriptText) then 
                        closePopup()
                    end
                else
                    consolePrint("File Save Error: File name cannot be empty.", "Error")
                end
            end)
            
            cancelBtn.MouseButton1Click:Connect(closePopup)
        end
        
        -- MODIFIED FUNCTION TO USE EXECUTOR API
        local function onExecuteClicked()
            local code = codeBox.Text
            if code and code:len() > 0 and code ~= "-- Monoxide created by Nexus and the Instance.new Team." then
                
                -- Attempt to use the global executor API function 'execute'
                if type(execute) == "function" then
                    local success, result = pcall(execute, code)
                    if not success then
                        consolePrint("Executor Error: Failed to execute code via global 'execute': " .. tostring(result), "Error")
                    else
                        consolePrint("Code sent to executor API.", "System")
                    end
                else
                    -- Fallback to standard Lua loadstring/pcall if 'execute' isn't available
                    local chunk, err = loadstring(code)
                    if chunk then
                        local success, result = pcall(chunk)
                        if not success then
                            consolePrint("Runtime Error (loadstring fallback): " .. tostring(result), "Error")
                        else
                            consolePrint("Code executed via loadstring (global 'execute' not found).", "System")
                        end
                    else
                        consolePrint("Compilation Error (loadstring fallback): " .. tostring(err), "Error")
                    end
                end
            end
        end
        -- END MODIFIED FUNCTION

        local function onClearClicked()
            codeBox.Text = ""
            
            for _, child in pairs(outputScroll:GetChildren()) do
                if child:IsA("TextLabel") then
                    child:Destroy()
                end
            end
            messageCounter = 0
            outputScroll.CanvasSize = U(0, 0, 0, 0)
        end

        local function onExitClicked()
            ui.Enabled = false
        end

        local function onMinimizeClicked()
            window.Visible = not window.Visible
        end

        local function onSaveClicked()
            createSavePopup() 
        end

        executeBtn.MouseButton1Click:Connect(onExecuteClicked)
        clearBtn.MouseButton1Click:Connect(onClearClicked)
        exitBtn.MouseButton1Click:Connect(onExitClicked)
        minimizeBtn.MouseButton1Click:Connect(onMinimizeClicked)
        saveBtn.MouseButton1Click:Connect(onSaveClicked)

        if codeBox.Text == "-- Monoxide created by Nexus and the Instance.new Team." then
            codeBox.Text = ""
        end

        task.spawn(function()
            
            consolePrint("--- File System Diagnostics ---", "System")
            consolePrint("readfile available: " .. tostring(FILE_SYSTEM_SUPPORT.readfile), "System")
            consolePrint("writefile available: " .. tostring(FILE_SYSTEM_SUPPORT.writefile), "System")
            consolePrint("isfolder available: " .. tostring(FILE_SYSTEM_SUPPORT.isfolder), "System")
            consolePrint("makefolder available: " .. tostring(FILE_SYSTEM_SUPPORT.makefolder), "System")
            consolePrint("-----------------------------", "System")
            
            if FILE_SYSTEM_SUPPORT.isfolder and FILE_SYSTEM_SUPPORT.makefolder then
                pcall(function()
                    if not isfolder(CACHE_FOLDER) then
                        makefolder(CACHE_FOLDER)
                        consolePrint("Created folder: " .. CACHE_FOLDER, "System")
                    end
                end)
            end

            if FILE_SYSTEM_SUPPORT.readfile then
                pcall(function()
                    local readSuccess, jsonString = pcall(readfile, DATA_STORE_KEY .. ".json") 
                    if readSuccess and jsonString and jsonString ~= "" then
                        local decodeSuccess, data = pcall(HttpService.JSONDecode, HttpService, jsonString)
                        if decodeSuccess and data and type(data) == "table" and data.scripts then
                            SavedScriptsData.scripts = data.scripts 
                            consolePrint("Loaded saved scripts from JSON file.", "System")
                        else
                             consolePrint("Failed to decode saved scripts JSON or file was corrupt.", "Warning")
                        end
                    else
                        consolePrint("No saved scripts JSON file found or file empty.", "System")
                    end
                end)
            else
                consolePrint("Warning: readfile() disabled. Cannot load saved scripts.", "Warning")
            end

            updateSavedScriptsList() 

        end)

        return ui 
    end
    
    local executeSuccess, uiResult = pcall(runCode)

    if executeSuccess then
        return uiResult, require
    else
        print("FATAL EXECUTION ERROR (Runtime): " .. tostring(uiResult))
    end
end
