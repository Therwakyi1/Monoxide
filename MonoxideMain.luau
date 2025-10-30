local CollectionService = game:GetService("CollectionService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local G2L = {}

local LINE_HEIGHT = 12

G2L["exec_1"] = Instance.new("ScreenGui", PlayerGui);
G2L["exec_1"]["Name"] = "exec";
G2L["exec_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

CollectionService:AddTag(G2L["exec_1"], "main");

G2L["tab_2"] = Instance.new("Frame", G2L["exec_1"]);
G2L["tab_2"]["BorderSizePixel"] = 0;
G2L["tab_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["tab_2"]["Size"] = UDim2.new(0, 886, 0, 24);
G2L["tab_2"]["Position"] = UDim2.new(0, 241, 0, 168);
G2L["tab_2"]["Name"] = "tab";


G2L["exittab_3"] = Instance.new("TextButton", G2L["tab_2"]);
G2L["exittab_3"]["TextWrapped"] = true;
G2L["exittab_3"]["BorderSizePixel"] = 0;
G2L["exittab_3"]["TextScaled"] = true;
G2L["exittab_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["exittab_3"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["exittab_3"]["BackgroundTransparency"] = 1;
G2L["exittab_3"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["exittab_3"]["Text"] = "×";
G2L["exittab_3"]["Name"] = "exittab";
G2L["exittab_3"]["Position"] = UDim2.new(0, 865, 0, 5);


G2L["Window_4"] = Instance.new("Frame", G2L["tab_2"]);
G2L["Window_4"]["BorderSizePixel"] = 0;
G2L["Window_4"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["Window_4"]["Size"] = UDim2.new(0, 886, 0, 392);
G2L["Window_4"]["Position"] = UDim2.new(0, 0, 0, 24);
G2L["Window_4"]["Name"] = "Window";


G2L["clear_5"] = Instance.new("TextButton", G2L["Window_4"]);
G2L["clear_5"]["BorderSizePixel"] = 2;
G2L["clear_5"]["TextSize"] = 14;
G2L["clear_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["clear_5"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["clear_5"]["Size"] = UDim2.new(0, 170, 0, 52);
G2L["clear_5"]["Text"] = "Clear";
G2L["clear_5"]["Name"] = "clear";
G2L["clear_5"]["Position"] = UDim2.new(0, 184, 0, 336);


G2L["execute_6"] = Instance.new("TextButton", G2L["Window_4"]);
G2L["execute_6"]["BorderSizePixel"] = 2;
G2L["execute_6"]["TextSize"] = 14;
G2L["execute_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["execute_6"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["execute_6"]["Size"] = UDim2.new(0, 170, 0, 52);
G2L["execute_6"]["Text"] = "Execute";
G2L["execute_6"]["Name"] = "execute";
G2L["execute_6"]["Position"] = UDim2.new(0, 8, 0, 336);

G2L["codebox_7"] = Instance.new("TextBox", G2L["Window_4"]);
G2L["codebox_7"]["CursorPosition"] = -1;
G2L["codebox_7"]["Name"] = "codebox";
G2L["codebox_7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["codebox_7"]["BorderSizePixel"] = 2;
G2L["codebox_7"]["TextSize"] = 11;
G2L["codebox_7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["codebox_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["codebox_7"]["RichText"] = true;
G2L["codebox_7"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["codebox_7"]["MultiLine"] = true;
G2L["codebox_7"]["ClearTextOnFocus"] = false;
G2L["codebox_7"]["ClipsDescendants"] = true;
G2L["codebox_7"]["Size"] = UDim2.new(0, 722, 0, 324);
G2L["codebox_7"]["Position"] = UDim2.new(0, 8, 0, 6);
G2L["codebox_7"]["Text"] = "print('MONOXIDE ON TOP')"; 
G2L["codebox_7"]["BackgroundTransparency"] = 0.1;
G2L["codebox_7"]["TextWrapped"] = true;


G2L["ScrollingFrame_8"] = Instance.new("ScrollingFrame", G2L["Window_4"]);
G2L["ScrollingFrame_8"]["BorderSizePixel"] = 2;
G2L["ScrollingFrame_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ScrollingFrame_8"]["Size"] = UDim2.new(0, 143, 0, 381);
G2L["ScrollingFrame_8"]["Position"] = UDim2.new(0, 736, 0, 6);
G2L["ScrollingFrame_8"]["ScrollBarThickness"] = 0;


G2L["savedscr_9"] = Instance.new("TextLabel", G2L["ScrollingFrame_8"]);
G2L["savedscr_9"]["BorderSizePixel"] = 0;
G2L["savedscr_9"]["TextSize"] = 12;
G2L["savedscr_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["savedscr_9"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["savedscr_9"]["Size"] = UDim2.new(0, 142, 0, 32);
G2L["savedscr_9"]["Text"] = "Saved Scripts (soon):";
G2L["savedscr_9"]["Name"] = "savedscr";


G2L["UIGradient_a"] = Instance.new("UIGradient", G2L["Window_4"]);
G2L["UIGradient_a"]["Rotation"] = 90;
G2L["UIGradient_a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(152, 152, 152)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


G2L["Output_b"] = Instance.new("Frame", G2L["Window_4"]);
G2L["Output_b"]["BorderSizePixel"] = 2;
G2L["Output_b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Output_b"]["Size"] = UDim2.new(0, 370, 0, 52);
G2L["Output_b"]["Position"] = UDim2.new(0, 360, 0, 336);
G2L["Output_b"]["Name"] = "Output";
G2L["Output_b"]["BackgroundTransparency"] = 0.1;


G2L["ScrollingFrame_c"] = Instance.new("ScrollingFrame", G2L["Output_b"]);
G2L["ScrollingFrame_c"]["BorderSizePixel"] = 0;
G2L["ScrollingFrame_c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["ScrollingFrame_c"]["CanvasPosition"] = Vector2.new(0, 0);
G2L["ScrollingFrame_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ScrollingFrame_c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ScrollingFrame_c"]["BackgroundTransparency"] = 1;
G2L["ScrollingFrame_c"]["Name"] = "OutputScrollFrame";


G2L["tabname_d"] = Instance.new("TextLabel", G2L["tab_2"]);
G2L["tabname_d"]["Interactable"] = false;
G2L["tabname_d"]["BorderSizePixel"] = 0;
G2L["tabname_d"]["TextSize"] = 10;
G2L["tabname_d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["tabname_d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["tabname_d"]["FontFace"] = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["tabname_d"]["BackgroundTransparency"] = 1;
G2L["tabname_d"]["Size"] = UDim2.new(0, 150, 0, 24);
G2L["tabname_d"]["Text"] = "MONOXIDE";
G2L["tabname_d"]["Name"] = "tabname";
G2L["tabname_d"]["Position"] = UDim2.new(0, 28, 0, 0);


G2L["logo_e"] = Instance.new("ImageLabel", G2L["tab_2"]);
G2L["logo_e"]["BorderSizePixel"] = 0;
G2L["logo_e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["logo_e"]["Image"] = "http://www.roblox.com/asset/?id=7102117818";
G2L["logo_e"]["Size"] = UDim2.new(0.027, 0, 1, 0);
G2L["logo_e"]["BackgroundTransparency"] = 1;
G2L["logo_e"]["Name"] = "logo";


G2L["minimizetab_f"] = Instance.new("TextButton", G2L["tab_2"]);
G2L["minimizetab_f"]["TextWrapped"] = true;
G2L["minimizetab_f"]["BorderSizePixel"] = 0;
G2L["minimizetab_f"]["TextScaled"] = true;
G2L["minimizetab_f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["minimizetab_f"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["minimizetab_f"]["BackgroundTransparency"] = 1;
G2L["minimizetab_f"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["minimizetab_f"]["Text"] = "–";
G2L["minimizetab_f"]["Name"] = "minimizetab";
G2L["minimizetab_f"]["Position"] = UDim2.new(0, 850, 0, 5);


G2L["UIDragDetector_10"] = Instance.new("UIDragDetector", G2L["tab_2"]);


local CodeBox = G2L["codebox_7"]
local ExecuteButton = G2L["execute_6"]
local ClearButton = G2L["clear_5"]
local ExitButton = G2L["exittab_3"]
local MinimizeButton = G2L["minimizetab_f"]
local TabFrame = G2L["tab_2"]
local WindowFrame = G2L["Window_4"]
local OutputScrollFrame = G2L["ScrollingFrame_c"]

local outputCount = 0
local originalPrint = print

local function printToOutput(...)
    outputCount = outputCount + 1

    local messageParts = {}
    for i, v in ipairs({...}) do
        table.insert(messageParts, tostring(v))
    end
    local message = table.concat(messageParts, " ")

    local newLine = Instance.new("TextLabel")
    newLine.Text = message
    newLine.TextXAlignment = Enum.TextXAlignment.Left
    newLine.TextYAlignment = Enum.TextYAlignment.Top
    newLine.BackgroundTransparency = 1
    newLine.TextColor3 = Color3.fromRGB(0, 0, 0)
    newLine.TextSize = LINE_HEIGHT
    newLine.Size = UDim2.new(1, 0, 0, LINE_HEIGHT)

    newLine.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

    newLine.Position = UDim2.new(0, 0, 0, (outputCount - 1) * LINE_HEIGHT)
    newLine.Parent = OutputScrollFrame

    local newCanvasHeight = outputCount * LINE_HEIGHT
    OutputScrollFrame.CanvasSize = UDim2.new(0, 0, 0, newCanvasHeight)

    if newCanvasHeight > OutputScrollFrame.AbsoluteSize.Y then
        OutputScrollFrame.CanvasPosition = Vector2.new(0, newCanvasHeight - OutputScrollFrame.AbsoluteSize.Y)
    end
end

_G.print = printToOutput
print = printToOutput

local function clearOutput()
    for _, child in ipairs(OutputScrollFrame:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end
    outputCount = 0
    OutputScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
end

local function executeCode()
    local code = CodeBox.Text

    local status, result = pcall(function()
        local chunk = loadstring(code)
        if chunk then
            return chunk()
        else
            error(result or "Failed to load code chunk (likely a syntax error)")
        end
    end)

    if not status then
        print("ERROR:", result)
    else
        if result ~= nil then
             print(result)
        end
    end
end

ExecuteButton.MouseButton1Click:Connect(executeCode)

ClearButton.MouseButton1Click:Connect(function()
    CodeBox.Text = ""
    clearOutput()
end)

ExitButton.MouseButton1Click:Connect(function(tab)
    G2L["exec_1"]:Destroy()
end)

MinimizeButton.MouseButton1Click:Connect(function()
    WindowFrame.Visible = not WindowFrame.Visible
end)

local isDragging = false
local dragStartPos = Vector2.new(0, 0)
local tabStartPos = UDim2.new(0, 0, 0, 0)

G2L["UIDragDetector_10"].DragStart:Connect(function(dragDetector, startPos)
    isDragging = true
    dragStartPos = startPos
    tabStartPos = TabFrame.Position
end)

G2L["UIDragDetector_10"].DragUpdate:Connect(function(dragDetector, currentPos)
    if isDragging then
        local delta = currentPos - dragStartPos
        local newX = tabStartPos.X.Offset + delta.X
        local newY = tabStartPos.Y.Offset + delta.Y
        TabFrame.Position = UDim2.new(0, newX, 0, newY)
    end
end)

G2L["UIDragDetector_10"].DragEnd:Connect(function()
    isDragging = false
end)

CodeBox.FocusLost:Connect(function(enterPressed)
    if CodeBox.Text:match("^%s*$") then 
        if not enterPressed then
            local originalSize = CodeBox.TextSize
            CodeBox.TextSize = originalSize + 1
            CodeBox.Text = "print('MONOXIDE ON TOP')"
            CodeBox.TextSize = originalSize
        end
    end
end)

if CodeBox.Text:match("^%s*$") then
    CodeBox.Text = "print('Hello, world!')"
end


return G2L["exec_1"], require;
