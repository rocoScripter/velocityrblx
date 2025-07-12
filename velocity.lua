local v8 = {
    TargetAim = {
        Enabled = false,
        Keybind = "",
        PredictionMovement = false,
        PredictionX = 0,
        PredictionY = 0,
        Part = 'Head',
        LockRadius = math.huge,
        FOV = {
            Enabled = false,
            Color = Color3.fromRGB(0, 150, 255),
            OutlineColor = Color3.fromRGB(0, 100, 200),
            Transparency = 1,
            Radius = 100,
            Filled = false
        },
        TargetStrafe = {
            Enabled = false,
            Speed = 20,
            Radius = 10
        }
    },
    SilentAim = {
        Enabled = false,
        Prediction = 8.7E-2,
        Part = 'NearestPart',
        FOV = {
            Visible = true,
            Size = 85,
            Color = Color3.fromRGB(255, 255, 255),
            Filled = false,
            Transparency = 1
        },
        Checks = {
            Knocked = true,
            TargetDeath = true,
            PlayerDeath = true,
            WallCheck = true
        }
    },
    TriggerBot = {
        EnableTriggerBot = false,
        UseTBDisplay = false,
        Delay = 1E-4,
        BlacklistKnife = false,
        Keybind = "T"
    },
    Visuals = {
        Highlight = {
            Enabled = false,
            Color = Color3.fromRGB(0, 150, 255),
            OutlineColor = Color3.fromRGB(255, 255, 255),
            Transparency = 0.5
        },
        TargetDot = {
            Enabled = false,
            Color = Color3.fromRGB(0, 150, 255),
            Size = 5
        }
    },
    HitboxExpander = {
        Enabled = false,
        SizeX = 10,
        SizeY = 10,
        SizeZ = 10,
        Color = Color3.fromRGB(0, 150, 255),
        Transparency = 0.7
    },
    Misc = {
        WalkSpeedEnabled = false,
        WalkSpeedKey = "",
        WalkSpeedValue = 40,
        RapidFireEnabled = false,
        FireRate = 0,
        NoJumpCooldownEnabled = false,
        WalkSpeedStatus = {
            Enabled = false,
            Color = Color3.fromRGB(255, 255, 255)
        }
    }
};
local v9 = game:GetService('Players');
local v10 = game:GetService('RunService');
local v11 = game:GetService('UserInputService');
local v12 = game:GetService('StarterGui');
local v13 = v9.LocalPlayer;
local v14 = v13:GetMouse();
local v15 = workspace.CurrentCamera;
local v16;
local v17;
local v18 = false;
local v19;
local v20 = 0;
local v21 = false;
local v22;
local v23 = Drawing.new('Circle');
local v24;
local v25;
local v26;
local v27 = v8.TriggerBot.EnableTriggerBot;
local v28;
local v29;
local v30;
v23.Color = v8.SilentAim.FOV.Color;
v23.Thickness = 1;
v23.NumSides = 32;
v23.Radius = v8.SilentAim.FOV.Size;
v23.Transparency = v8.SilentAim.FOV.Transparency;
v23.Visible = v8.SilentAim.FOV.Visible;
v23.Filled = v8.SilentAim.FOV.Filled;
local v43 = loadstring(game:HttpGet('https://raw.githubusercontent.com/imagoodpersond/puppyware/main/lib'))();
local v44 = loadstring(game:HttpGet('https://raw.githubusercontent.com/imagoodpersond/puppyware/main/notify'))();
local v45 = v44.Notify;
makefolder('Example');
local v46 = v43:new({
    name = 'Velocity',
    accent = Color3.fromRGB(0, 150, 255),
    textsize = 13,
    outline = Color3.fromRGB(0, 100, 200),
    bgcolor = Color3.fromRGB(0, 0, 0),
    textcolor = Color3.fromRGB(255, 255, 255)
});
local v47 = v46:page({
    name = 'Main'
});
local v48 = v46:page({
    name = 'Legit'
});
local v49 = v46:page({
    name = 'Misc'
});
local v50 = v47:section({
    name = 'TargetAim',
    side = 'left',
    size = 380
});
local v51 = v47:section({
    name = 'Visuals',
    side = 'right',
    size = 155
});
local v52 = v47:section({
    name = 'Hitbox Expander',
    side = 'right',
    size = 190
});
local v53 = v49:section({
    name = 'WalkSpeed',
    side = 'left',
    size = 160
});
local v54 = v49:section({
    name = 'Features',
    side = 'right',
    size = 120
});
local v55 = v48:section({
    name = 'SilentAim',
    side = 'left',
    size = 380
});
local v56 = v48:section({
    name = 'TriggerBot',
    side = 'right',
    size = 200
});
local v57 = getinfo or debug.getinfo ;
local v58 = false;
local v59 = {};
local v60, v61;
setthreadidentity(2);
for v102, v103 in getgc(true) do
    if (typeof(v103) == 'table') then
        local v292 = 0;
        local v293;
        local v294;
        while true do
            if ((0) == v292) then
                v293 = rawget(v103, 'Detected');
                v294 = rawget(v103, 'Kill');
                v292 = 1;
            end
            if (v292 == (1)) then
                if ((typeof(v293) == 'function') and not v60) then
                    local v439 = 0;
                    local v440;
                    while true do
                        if (v439 == (0)) then
                            v60 = v293;
                            v440 = nil;
                            v439 = 1;
                        end
                        if (v439 == (1)) then
                            v440 = hookfunction(v60, function(v532, v533, v534)
                                if (v532 ~= "_") then
                                    if v58 then
                                    end
                                end
                                return true
                            end);
                            table.insert(v59, v60);
                            break
                        end
                    end
                end
                if (rawget(v103, 'Variables') and rawget(v103, 'Process') and (typeof(v294) == 'function') and not v61) then
                    local v441 = 0;
                    local v442;
                    while true do
                        if (v441 == (1)) then
                            v442 = hookfunction(v61, function(v535)
                                if v58 then
                                end
                            end);
                            table.insert(v59, v61);
                            break
                        end
                        if (v441 == 0) then
                            v61 = v294;
                            v442 = nil;
                            v441 = 1;
                        end
                    end
                end
                break
            end
        end
    end
end
local v62;
v62 = hookfunction(getrenv().debug.info, newcclosure(function(...)
    local v104 = 0;
    local v105;
    local v106;
    local v107;
    while true do
        if (v104 == (0)) then
            v105 = 0;
            v106 = nil;
            v104 = 1;
        end
        if (v104 == 1) then
            v107 = nil;
            while true do
                if (v105 == (0)) then
                    v106, v107 = ...;
                    if (v60 and (v106 == v60)) then
                        local v460 = 0;
                        local v461;
                        while true do
                            if (v460 == (0)) then
                                v461 = 0;
                                while true do
                                    if (v461 == (0)) then
                                        if v58 then
                                        end
                                        return coroutine.yield(coroutine.running())
                                    end
                                end
                                break
                            end
                        end
                    end
                    v105 = 1;
                end
                if (v105 == (1)) then
                    return v62(...)
                end
            end
            break
        end
    end
end));
setthreadidentity(7);
local function v63()
    if not v25 then
        v25 = Instance.new('ScreenGui');
        v25.Name = 'WalkSpeedUI';
        v25.Parent = game:GetService('CoreGui');
        v26 = Instance.new('TextLabel');
        v26.Size = UDim2.new(0, 100, 0, 50);
        v26.Position = UDim2.new(0, - 25, 0.5, 130);
        v26.Text = 'WS';
        v26.TextColor3 = v8.Misc.WalkSpeedStatus.Color;
        v26.TextSize = 40;
        v26.Font = Enum.Font.SourceSansBold;
        v26.BackgroundTransparency = 1;
        v26.Visible = v8.Misc.WalkSpeedStatus.Enabled and v8.Misc.WalkSpeedEnabled ;
        v26.Parent = v25;
    else
        local v308 = 0;
        while true do
            if (v308 == (0)) then
                v26.Text = (v8.Misc.WalkSpeedEnabled and 'WS') or 'WS' ;
                v26.TextColor3 = v8.Misc.WalkSpeedStatus.Color;
                v308 = 1;
            end
            if (v308 == (1)) then
                v26.Visible = v8.Misc.WalkSpeedStatus.Enabled and v8.Misc.WalkSpeedEnabled ;
                break
            end
        end
    end
end
local function v64()
    if not v28 then
        local v309 = 0;
        while true do
            if (v309 == (4)) then
                v29.Parent = v28;
                break
            end
            if (v309 == 1) then
                v29 = Instance.new('TextLabel');
                v29.Size = UDim2.new(0, 100, 0, 50);
                v29.Position = UDim2.new(0, - 25, 0.5, 95);
                v309 = 2;
            end
            if (v309 == 2) then
                local v391 = 0;
                while true do
                    if (1 == v391) then
                        v29.TextSize = 40;
                        v309 = 3;
                        break
                    end
                    if (0 == v391) then
                        v29.Text = 'TB';
                        v29.TextColor3 = Color3.new(1, 1, 1);
                        v391 = 1;
                    end
                end
            end
            if ((3) == v309) then
                v29.Font = Enum.Font.SourceSansBold;
                v29.BackgroundTransparency = 1;
                v29.Visible = v8.TriggerBot.UseTBDisplay and v27 ;
                v309 = 4;
            end
            if (v309 == (0)) then
                v28 = Instance.new('ScreenGui');
                v28.Name = 'TriggerBotUI';
                v28.Parent = game:GetService('CoreGui');
                v309 = 1;
            end
        end
    else
        v29.Visible = v8.TriggerBot.UseTBDisplay and v27 ;
    end
end
local function v65(v108)
    local v109 = 0;
    local v110;
    local v111;
    local v112;
    while true do
        if ((0) == v109) then
            v110 = v108.Character;
            if (not v110 or not v110:FindFirstChild('BodyEffects')) then
                return false
            end
            v109 = 1;
        end
        if (v109 == (2)) then
            return (v112 and v112.Value) or false
        end
        if (v109 == 1) then
            v111 = v110.BodyEffects;
            v112 = v111:FindFirstChild('K.O') or v111:FindFirstChild('KO') ;
            v109 = 2;
        end
    end
end
local function v66(v113)
    if not v113 then
        return false
    end
    for v286, v287 in next, v9:GetPlayers() do
        if (v287.Character and ((v113 == v287.Character) or v113:IsDescendantOf(v287.Character))) then
            if not v65(v287) then
                return v287
            end
        end
    end
    return false
end
local function v67(v114)
    local v115 = 0;
    local v116;
    while true do
        if (v115 == (0)) then
            v116 = 0;
            while true do
                if (v116 == (0)) then
                    if v8.TriggerBot.BlacklistKnife then
                        return v114.Name == '[Knife]'
                    end
                    return false
                end
            end
            break
        end
    end
end
local function v68(v117)
    v12:SetCore('SendNotification', {
        Title = 'Notification',
        Text = v117,
        Duration = 2
    });
end
local function v69()
    local v118 = 0;
    while true do
        if ((0) == v118) then
            if v30 then
                local v398 = 0;
                while true do
                    if (v398 == (0)) then
                        v30:Disconnect();
                        v30 = nil;
                        break
                    end
                end
            end
            if v8.TriggerBot.EnableTriggerBot then
                v30 = v10.Heartbeat:Connect(function()
                    if v27 then
                        local v465 = 0;
                        local v466;
                        while true do
                            if (v465 == (0)) then
                                v466 = v14.Target;
                                if (v466 and v66(v466)) then
                                    if v13.Character then
                                        local v567 = 0;
                                        local v568;
                                        while true do
                                            if (v567 == (0)) then
                                                v568 = v13.Character:FindFirstChildWhichIsA('Tool');
                                                if (v568 and not v67(v568)) then
                                                    local v594 = 0;
                                                    while true do
                                                        if (v594 == 0) then
                                                            task.wait(v8.TriggerBot.Delay);
                                                            v568:Activate();
                                                            break
                                                        end
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end
                                end
                                break
                            end
                        end
                    end
                end);
            end
            break
        end
    end
end
v56:toggle({
    name = 'Enabled',
    def = v8.TriggerBot.EnableTriggerBot,
    callback = function(v119)
        local v120 = 0;
        local v121;
        while true do
            if (v120 == (0)) then
                v121 = 0;
                while true do
                    if (v121 == 0) then
                        v8.TriggerBot.EnableTriggerBot = v119;
                        v69();
                        v121 = 1;
                    end
                    if (v121 == 1) then
                        v45((v119 and 'TriggerBot Enabled') or 'TriggerBot Disabled');
                        break
                    end
                end
                break
            end
        end
    end
});
v56:toggle({
    name = 'Use TB Display',
    def = v8.TriggerBot.UseTBDisplay,
    callback = function(v122)
        v8.TriggerBot.UseTBDisplay = v122;
        v64();
        v45((v122 and 'TB Display Enabled') or 'TB Display Disabled');
    end
});
v56:textbox({
    name = 'Keybind',
    def = v8.TriggerBot.Keybind,
    callback = function(v124)
        local v125 = 0;
        while true do
            if (v125 == (0)) then
                v8.TriggerBot.Keybind = v124:sub(1, 1):upper();
                v45('TriggerBot Keybind set to: ' .. v124:sub(1, 1):upper());
                break
            end
        end
    end
});
v56:slider({
    name = 'Delay',
    def = v8.TriggerBot.Delay,
    max = 1,
    min = 0,
    rounding = true,
    callback = function(v126)
        local v127 = 0;
        while true do
            if (v127 == (0)) then
                v8.TriggerBot.Delay = v126;
                v45('TriggerBot Delay set to: ' .. v126);
                break
            end
        end
    end
});
v56:toggle({
    name = 'Blacklist Knife',
    def = v8.TriggerBot.BlacklistKnife,
    callback = function(v128)
        local v129 = 0;
        while true do
            if (v129 == (0)) then
                v8.TriggerBot.BlacklistKnife = v128;
                v45((v128 and 'Knife Blacklist Enabled') or 'Knife Blacklist Disabled');
                break
            end
        end
    end
});
v11.InputBegan:Connect(function(v130, v131)
    local v132 = 0;
    while true do
        if (v132 == 0) then
            if v131 then
                return
            end
            if (v130.KeyCode == Enum.KeyCode[v8.TriggerBot.Keybind]) then
                local v399 = 0;
                while true do
                    if (v399 == 0) then
                        v27 = not v27;
                        if v8.TriggerBot.UseTBDisplay then
                            v64();
                        else
                            v68('TriggerBot ' .. ((v27 and 'Enabled') or 'Disabled'));
                        end
                        break
                    end
                end
            end
            break
        end
    end
end);
v50:toggle({
    name = 'Enabled',
    def = v8.TargetAim.Enabled,
    callback = function(v133)
        local v134 = 0;
        while true do
            if ((0) == v134) then
                v8.TargetAim.Enabled = v133;
                v45((v133 and 'Target Aim Enabled') or 'Target Aim Disabled');
                break
            end
        end
    end
});
v50:textbox({
    name = 'Key',
    def = v8.TargetAim.Keybind,
    callback = function(v135)
        v8.TargetAim.Keybind = v135:sub(1, 1):lower();
    end
});
v50:toggle({
    name = 'Prediction Movement',
    def = v8.TargetAim.PredictionMovement,
    callback = function(v137)
        v8.TargetAim.PredictionMovement = v137;
    end
});
v50:textbox({
    name = 'Prediction X',
    def = tostring(v8.TargetAim.PredictionX),
    callback = function(v139)
        local v140 = 0;
        local v141;
        while true do
            if (v140 == 0) then
                v141 = tonumber(v139);
                if (v141 and (v141 >= (0)) and (v141 <= 1)) then
                    v8.TargetAim.PredictionX = v141;
                else
                    v45('Prediction X must be a number between 0 and 1');
                end
                break
            end
        end
    end
});
v50:textbox({
    name = 'Prediction Y',
    def = tostring(v8.TargetAim.PredictionY),
    callback = function(v142)
        local v143 = 0;
        local v144;
        while true do
            if (v143 == 0) then
                v144 = tonumber(v142);
                if (v144 and (v144 >= (0)) and (v144 <= 1)) then
                    v8.TargetAim.PredictionY = v144;
                else
                    v45('Prediction Y must be a number between 0 and 1');
                end
                break
            end
        end
    end
});
v50:dropdown({
    name = 'Part',
    def = v8.TargetAim.Part,
    max = 4,
    options = {
        'Head',
        'UpperTorso',
        'LowerTorso'
    },
    callback = function(v145)
        v8.TargetAim.Part = v145;
    end
});
v50:textbox({
    name = 'FOV Radius',
    def = tostring(v8.TargetAim.FOV.Radius),
    callback = function(v147)
        local v148 = tonumber(v147);
        if (v148 and (v148 >= (1)) and (v148 <= (250))) then
            local v311 = 0;
            while true do
                if (v311 == (1)) then
                    TargetAimFOVOutline.Radius = (v148 * (5)) + (2) ;
                    break
                end
                if (v311 == (0)) then
                    v8.TargetAim.FOV.Radius = v148;
                    TargetAimFOV.Radius = v148 * (5) ;
                    v311 = 1;
                end
            end
        else
            v45('FOV Radius must be a number between 1 and 250');
        end
    end
});
v50:toggle({
    name = 'Target Strafe',
    def = v8.TargetAim.TargetStrafe.Enabled,
    callback = function(v149)
        local v150 = 0;
        local v151;
        while true do
            if (v150 == 0) then
                v151 = 0;
                while true do
                    if (v151 == (0)) then
                        v8.TargetAim.TargetStrafe.Enabled = v149;
                        v45((v149 and 'Target Strafe Enabled') or 'Target Strafe Disabled');
                        break
                    end
                end
                break
            end
        end
    end
});
v50:slider({
    name = 'Strafe Speed',
    def = v8.TargetAim.TargetStrafe.Speed,
    max = 50,
    min = 1,
    rounding = false,
    callback = function(v152)
        local v153 = 0;
        while true do
            if (v153 == (0)) then
                v8.TargetAim.TargetStrafe.Speed = v152;
                v45('Strafe Speed Set to: ' .. v152);
                break
            end
        end
    end
});
v50:slider({
    name = 'Strafe Radius',
    def = v8.TargetAim.TargetStrafe.Radius,
    max = 50,
    min = 1,
    rounding = false,
    callback = function(v154)
        v8.TargetAim.TargetStrafe.Radius = v154;
        v45('Strafe Radius Set to: ' .. v154);
    end
});
v55:toggle({
    name = 'Enabled',
    def = v8.SilentAim.Enabled,
    callback = function(v156)
        local v157 = 0;
        while true do
            if (v157 == (0)) then
                v8.SilentAim.Enabled = v156;
                v45((v156 and 'SilentAim Enabled') or 'SilentAim Disabled');
                break
            end
        end
    end
});
v55:textbox({
    name = 'Prediction',
    def = tostring(v8.SilentAim.Prediction),
    callback = function(v158)
        local v159 = tonumber(v158);
        if (v159 and (v159 >= (0)) and (v159 <= (1))) then
            local v312 = 0;
            while true do
                if (v312 == (0)) then
                    v8.SilentAim.Prediction = v159;
                    v45('Prediction set to: ' .. v159);
                    break
                end
            end
        else
            v45('Prediction must be a number between 0 and 1');
        end
    end
});
v55:dropdown({
    name = 'Part',
    def = v8.SilentAim.Part,
    max = 4,
    options = {
        'Head',
        'UpperTorso',
        'LowerTorso',
        'NearestPart'
    },
    callback = function(v160)
        local v161 = 0;
        local v162;
        while true do
            if (v161 == (0)) then
                v162 = 0;
                while true do
                    if (v162 == (0)) then
                        v8.SilentAim.Part = v160;
                        v45('Target Part set to: ' .. v160);
                        break
                    end
                end
                break
            end
        end
    end
});
v55:toggle({
    name = 'FOV Visible',
    def = v8.SilentAim.FOV.Visible,
    callback = function(v163)
        local v164 = 0;
        local v165;
        while true do
            if (v164 == 0) then
                v165 = 0;
                while true do
                    if (v165 == (0)) then
                        v8.SilentAim.FOV.Visible = v163;
                        v23.Visible = v163;
                        v165 = 1;
                    end
                    if ((1) == v165) then
                        v45((v163 and 'Sentra FOV Circle Enabled') or 'Sentra FOV Circle Disabled');
                        break
                    end
                end
                break
            end
        end
    end
});
v55:slider({
    name = 'FOV Size',
    def = v8.SilentAim.FOV.Size,
    max = 500,
    min = 10,
    rounding = false,
    callback = function(v166)
        v8.SilentAim.FOV.Size = v166;
        v23.Radius = v166;
        v45('Sentra FOV Size set to: ' .. v166);
    end
});
v55:colorpicker({
    name = 'FOV Color',
    def = v8.SilentAim.FOV.Color,
    callback = function(v169)
        v8.SilentAim.FOV.Color = v169;
        v23.Color = v169;
        v45('Sentra FOV Color set');
    end
});
v55:toggle({
    name = 'FOV Filled',
    def = v8.SilentAim.FOV.Filled,
    callback = function(v172)
        v8.SilentAim.FOV.Filled = v172;
        v23.Filled = v172;
        v45((v172 and 'Sentra FOV Filled Enabled') or 'Sentra FOV Filled Disabled');
    end
});
v55:slider({
    name = 'FOV Transparency',
    def = v8.SilentAim.FOV.Transparency,
    max = 1,
    min = 0,
    rounding = true,
    callback = function(v175)
        local v176 = 0;
        while true do
            if (v176 == (1)) then
                v45('Sentra FOV Transparency set to: ' .. v175);
                break
            end
            if (v176 == 0) then
                v8.SilentAim.FOV.Transparency = v175;
                v23.Transparency = v175;
                v176 = 1;
            end
        end
    end
});
v55:toggle({
    name = 'Knocked Check',
    def = v8.SilentAim.Checks.Knocked,
    callback = function(v177)
        local v178 = 0;
        while true do
            if (v178 == 0) then
                v8.SilentAim.Checks.Knocked = v177;
                v45((v177 and 'Knocked Check Enabled') or 'Knocked Check Disabled');
                break
            end
        end
    end
});
v55:toggle({
    name = 'Target Death Check',
    def = v8.SilentAim.Checks.TargetDeath,
    callback = function(v179)
        local v180 = 0;
        local v181;
        while true do
            if ((0) == v180) then
                v181 = 0;
                while true do
                    if (v181 == (0)) then
                        v8.SilentAim.Checks.TargetDeath = v179;
                        v45((v179 and 'Target Death Check Enabled') or 'Target Death Check Disabled');
                        break
                    end
                end
                break
            end
        end
    end
});
v55:toggle({
    name = 'Player Death Check',
    def = v8.SilentAim.Checks.PlayerDeath,
    callback = function(v182)
        local v183 = 0;
        while true do
            if (v183 == 0) then
                v8.SilentAim.Checks.PlayerDeath = v182;
                v45((v182 and 'Player Death Check Enabled') or 'Player Death Check Disabled');
                break
            end
        end
    end
});
v55:toggle({
    name = 'Wall Check',
    def = v8.SilentAim.Checks.WallCheck,
    callback = function(v184)
        local v185 = 0;
        while true do
            if (v185 == 0) then
                v8.SilentAim.Checks.WallCheck = v184;
                v45((v184 and 'Wall Check Enabled') or 'Wall Check Disabled');
                break
            end
        end
    end
});
v52:toggle({
    name = 'Enabled',
    def = v8.HitboxExpander.Enabled,
    callback = function(v186)
        local v187 = 0;
        local v188;
        while true do
            if (v187 == (0)) then
                v188 = 0;
                while true do
                    if (v188 == (1)) then
                        if not v186 then
                            for v489, v490 in pairs(v9:GetPlayers()) do
                                if ((v490 ~= v13) and v490.Character and v490.Character:FindFirstChild('HumanoidRootPart')) then
                                    local v537 = 0;
                                    local v538;
                                    while true do
                                        if (v537 == 0) then
                                            v538 = v490.Character.HumanoidRootPart;
                                            pcall(function()
                                                local v569 = 0;
                                                while true do
                                                    if (v569 == (1)) then
                                                        v538.Material = Enum.Material.Plastic;
                                                        v538.Color = Color3.fromRGB(255, 255, 255);
                                                        break
                                                    end
                                                    if (v569 == 0) then
                                                        v538.Size = Vector3.new(2, 2, 1);
                                                        v538.Transparency = 0;
                                                        v569 = 1;
                                                    end
                                                end
                                            end);
                                            break
                                        end
                                    end
                                end
                            end
                        end
                        break
                    end
                    if (v188 == (0)) then
                        v8.HitboxExpander.Enabled = v186;
                        v45((v186 and 'Hitbox Expander Enabled') or 'Hitbox Expander Disabled');
                        v188 = 1;
                    end
                end
                break
            end
        end
    end
});
v52:slider({
    name = 'Size X',
    def = v8.HitboxExpander.SizeX,
    max = 15,
    min = 1,
    rounding = false,
    callback = function(v189)
        local v190 = 0;
        local v191;
        while true do
            if (v190 == (0)) then
                v191 = 0;
                while true do
                    if (v191 == 0) then
                        v8.HitboxExpander.SizeX = v189;
                        v45('Hitbox Size X Set to: ' .. v189);
                        break
                    end
                end
                break
            end
        end
    end
});
v52:slider({
    name = 'Size Y',
    def = v8.HitboxExpander.SizeY,
    max = 15,
    min = 1,
    rounding = false,
    callback = function(v192)
        local v193 = 0;
        local v194;
        while true do
            if (v193 == (0)) then
                v194 = 0;
                while true do
                    if ((0) == v194) then
                        v8.HitboxExpander.SizeY = v192;
                        v45('Hitbox Size Y Set to: ' .. v192);
                        break
                    end
                end
                break
            end
        end
    end
});
v52:slider({
    name = 'Size Z',
    def = v8.HitboxExpander.SizeZ,
    max = 15,
    min = 1,
    rounding = false,
    callback = function(v195)
        local v196 = 0;
        while true do
            if (v196 == (0)) then
                v8.HitboxExpander.SizeZ = v195;
                v45('Hitbox Size Z Set to: ' .. v195);
                break
            end
        end
    end
});
v52:slider({
    name = 'Transparency',
    def = v8.HitboxExpander.Transparency,
    max = 1,
    min = 0,
    rounding = true,
    callback = function(v197)
        local v198 = 0;
        while true do
            if (v198 == 0) then
                v8.HitboxExpander.Transparency = v197;
                v45('Hitbox Transparency Set to: ' .. v197);
                break
            end
        end
    end
});
v52:colorpicker({
    name = 'Color',
    def = v8.HitboxExpander.Color,
    callback = function(v199)
        local v200 = 0;
        while true do
            if (v200 == (0)) then
                v8.HitboxExpander.Color = v199;
                v45('Hitbox Color Set');
                break
            end
        end
    end
});
v53:toggle({
    name = 'Enabled',
    def = v8.Misc.WalkSpeedEnabled,
    callback = function(v201)
        local v202 = 0;
        while true do
            if (v202 == 1) then
                if (v13.Character and v13.Character:FindFirstChild('Humanoid')) then
                    if v8.Misc.WalkSpeedEnabled then
                        v13.Character.Humanoid.WalkSpeed = v8.Misc.WalkSpeedValue;
                    else
                        v13.Character.Humanoid.WalkSpeed = 16;
                    end
                end
                v63();
                break
            end
            if (v202 == 0) then
                v8.Misc.WalkSpeedEnabled = v201;
                if v8.Misc.WalkSpeedEnabled then
                    v45('WalkSpeed Enabled');
                else
                    v45('WalkSpeed Disabled');
                end
                v202 = 1;
            end
        end
    end
});
v53:textbox({
    name = 'Key',
    def = v8.Misc.WalkSpeedKey,
    callback = function(v203)
        v8.Misc.WalkSpeedKey = v203:sub(1, 1):lower();
    end
});
v53:slider({
    name = 'Speed',
    def = v8.Misc.WalkSpeedValue,
    max = 1E3,
    min = 16,
    rounding = false,
    callback = function(v205)
        local v206 = 0;
        while true do
            if (v206 == (1)) then
                v63();
                break
            end
            if (v206 == (0)) then
                v8.Misc.WalkSpeedValue = v205;
                if (v8.Misc.WalkSpeedEnabled and v13.Character and v13.Character:FindFirstChild('Humanoid')) then
                    local v406 = 0;
                    while true do
                        if (v406 == (0)) then
                            v13.Character.Humanoid.WalkSpeed = v205;
                            v45('WalkSpeed Set to: ' .. v205);
                            break
                        end
                    end
                end
                v206 = 1;
            end
        end
    end
});
v53:toggle({
    name = 'Show Status',
    def = v8.Misc.WalkSpeedStatus.Enabled,
    callback = function(v207)
        local v208 = 0;
        local v209;
        while true do
            if (v208 == (0)) then
                v209 = 0;
                while true do
                    if (v209 == (0)) then
                        v8.Misc.WalkSpeedStatus.Enabled = v207;
                        v63();
                        v209 = 1;
                    end
                    if (1 == v209) then
                        v45((v207 and 'WalkSpeed Status Display Enabled') or 'WalkSpeed Status Display Disabled');
                        break
                    end
                end
                break
            end
        end
    end
});
v11.InputBegan:Connect(function(v210, v211)
    local v212 = 0;
    while true do
        if (v212 == 0) then
            if v211 then
                return
            end
            if (v210.KeyCode == Enum.KeyCode[v8.Misc.WalkSpeedKey:upper()]) then
                local v407 = 0;
                while true do
                    if (v407 == (0)) then
                        v8.Misc.WalkSpeedEnabled = not v8.Misc.WalkSpeedEnabled;
                        if v8.Misc.WalkSpeedEnabled then
                            local v502 = 0;
                            local v503;
                            while true do
                                if (v502 == 0) then
                                    v503 = 0;
                                    while true do
                                        if (v503 == (0)) then
                                            v45('WalkSpeed Enabled');
                                            if (v13.Character and v13.Character:FindFirstChild('Humanoid')) then
                                                v13.Character.Humanoid.WalkSpeed = v8.Misc.WalkSpeedValue;
                                            end
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        else
                            local v504 = 0;
                            local v505;
                            while true do
                                if (v504 == (0)) then
                                    v505 = 0;
                                    while true do
                                        if (v505 == 0) then
                                            v45('WalkSpeed Disabled');
                                            if (v13.Character and v13.Character:FindFirstChild('Humanoid')) then
                                                v13.Character.Humanoid.WalkSpeed = 16;
                                            end
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        v407 = 1;
                    end
                    if ((1) == v407) then
                        v63();
                        break
                    end
                end
            end
            break
        end
    end
end);
local function v70()
    if (v8.Misc.WalkSpeedEnabled and v13.Character and v13.Character:FindFirstChild('Humanoid')) then
        v13.Character.Humanoid.WalkSpeed = v8.Misc.WalkSpeedValue;
    end
end
local function v71()
    local v213 = v13.Character;
    return (v213 and v213:FindFirstChildOfClass('Humanoid')) or nil
end
local function v72()
    if v24 then
        local v315 = 0;
        while true do
            if (v315 == (0)) then
                v24:Disconnect();
                v24 = nil;
                break
            end
        end
    end
    if v8.Misc.NoJumpCooldownEnabled then
        v24 = v10.Heartbeat:Connect(function()
            local v345 = 0;
            local v346;
            while true do
                if (v345 == (0)) then
                    v346 = v71();
                    if v346 then
                        v346.UseJumpPower = false;
                    end
                    break
                end
            end
        end);
    end
end
v13.CharacterAdded:Connect(function(v214)
    local v215 = 0;
    while true do
        if (v215 == (1)) then
            v70();
            v72();
            v215 = 2;
        end
        if (v215 == (3)) then
            v69();
            break
        end
        if (v215 == 0) then
            v214:WaitForChild('Humanoid', 5);
            wait(0.10000000000002274);
            v215 = 1;
        end
        if (v215 == 2) then
            v63();
            v64();
            v215 = 3;
        end
    end
end);
local v73 = Drawing.new('Circle');
v73.Color = v8.Visuals.TargetDot.Color;
v73.Thickness = 1;
v73.NumSides = 32;
v73.Radius = v8.Visuals.TargetDot.Size;
v73.Transparency = 1;
v73.Visible = v8.Visuals.TargetDot.Enabled;
v73.Filled = true;
local function v84(v216)
    local v217 = v11:GetMouseLocation();
    local v218;
    local v219 = math.huge;
    for v288, v289 in ipairs(v216:GetChildren()) do
        if v289:IsA('BasePart') then
            local v347 = 0;
            local v348;
            local v349;
            while true do
                if (v347 == (0)) then
                    v348, v349 = v15:WorldToViewportPoint(v289.Position);
                    if v349 then
                        local v470 = (Vector2.new(v348.X, v348.Y) - v217).Magnitude;
                        if (v470 < v219) then
                            local v506 = 0;
                            while true do
                                if (v506 == (0)) then
                                    v219 = v470;
                                    v218 = v289;
                                    break
                                end
                            end
                        end
                    end
                    break
                end
            end
        end
    end
    return v218
end
local function v85(v220)
    local v221 = 0;
    local v222;
    local v223;
    while true do
        if (v221 == (1)) then
            return v223 and (v223.Health > (0))
        end
        if (v221 == (0)) then
            v222 = v220.Character;
            v223 = v222 and v222:FindFirstChildOfClass('Humanoid') ;
            v221 = 1;
        end
    end
end
local function v86(v224)
    local v225 = 0;
    local v226;
    local v227;
    local v228;
    local v229;
    local v230;
    while true do
        if (v225 == 1) then
            v227 = v15.CFrame.Position;
            v228 = (v226 - v227).Magnitude;
            v225 = 2;
        end
        if (v225 == 0) then
            if not v8.SilentAim.Checks.WallCheck then
                return true
            end
            v226 = v224.HumanoidRootPart.Position;
            v225 = 1;
        end
        if (v225 == (2)) then
            v229, v230 = workspace:FindPartOnRayWithIgnoreList(Ray.new(v227, (v226 - v227).Unit * v228), {
                v13.Character,
                v224
            });
            return (v229 == nil) or ((v230 - v227).Magnitude >= v228)
        end
    end
end
local function v87(v231)
    local v232 = 0;
    local v233;
    local v234;
    local v235;
    local v236;
    while true do
        local v290 = 0;
        while true do
            if (v290 == (0)) then
                if (v232 == 1) then
                    v235 = v11:GetMouseLocation();
                    v236 = v8.SilentAim.Part;
                    v232 = 2;
                end
                if (v232 == (0)) then
                    v233 = v231;
                    v234 = nil;
                    v232 = 1;
                end
                v290 = 1;
            end
            if (v290 == (1)) then
                if ((2) == v232) then
                    for v446, v447 in next, v9:GetPlayers() do
                        if ((v447 ~= v13) and v85(v447)) then
                            local v491 = v447.Character;
                            local v492;
                            if (v236 == 'NearestPart') then
                                v492 = v84(v491);
                            else
                                v492 = v491 and v491:FindFirstChild(v236) ;
                            end
                            if (v491 and v86(v491) and v492) then
                                local v539 = 0;
                                local v540;
                                local v541;
                                local v542;
                                while true do
                                    if (v539 == 0) then
                                        v540, v541 = v15:WorldToViewportPoint(v492.Position);
                                        v542 = (Vector2.new(v540.X, v540.Y) - v235).Magnitude;
                                        v539 = 1;
                                    end
                                    if (v539 == (1)) then
                                        if ((v542 < v233) and v541) then
                                            local v577 = 0;
                                            while true do
                                                if (v577 == 0) then
                                                    v234 = v447;
                                                    v233 = v542;
                                                    break
                                                end
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    end
                    return v234
                end
                break
            end
        end
    end
end
v10.Heartbeat:Connect(function()
    local v237 = 0;
    while true do
        if (v237 == (1)) then
            v23.Radius = v8.SilentAim.FOV.Size;
            v23.Color = v8.SilentAim.FOV.Color;
            v237 = 2;
        end
        if (v237 == 3) then
            if (v21 and v22 and v22.Character and v22.Character.Parent) then
                local v408 = 0;
                local v409;
                local v410;
                local v411;
                local v412;
                while true do
                    if (v408 == (3)) then
                        if not v412 then
                            local v507 = 0;
                            while true do
                                if (1 == v507) then
                                    return
                                end
                                if (0 == v507) then
                                    v22 = nil;
                                    v21 = false;
                                    v507 = 1;
                                end
                            end
                        end
                        if v8.SilentAim.Checks.Knocked then
                            local v508 = 0;
                            local v509;
                            local v510;
                            local v511;
                            while true do
                                if (1 == v508) then
                                    v511 = v409:FindFirstChild('GRABBING_CONSTRAINT');
                                    if ((v410.Health <= (0)) or v510 or v511) then
                                        local v570 = 0;
                                        while true do
                                            if (0 == v570) then
                                                v22 = nil;
                                                v21 = false;
                                                break
                                            end
                                        end
                                    end
                                    break
                                end
                                if (v508 == 0) then
                                    v509 = v409:FindFirstChild('BodyEffects');
                                    v510 = v509 and v509:FindFirstChild('K.O') and v509['K.O'].Value ;
                                    v508 = 1;
                                end
                            end
                        end
                        v408 = 4;
                    end
                    if (v408 == 4) then
                        if (v8.SilentAim.Checks.TargetDeath and (v410.Health <= (0))) then
                            local v512 = 0;
                            local v513;
                            while true do
                                if ((0) == v512) then
                                    v513 = 0;
                                    while true do
                                        if (v513 == (0)) then
                                            v22 = nil;
                                            v21 = false;
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        if v8.SilentAim.Checks.PlayerDeath then
                            local v514 = 0;
                            local v515;
                            while true do
                                if (v514 == (0)) then
                                    v515 = v13.Character and v13.Character:FindFirstChildOfClass('Humanoid') ;
                                    if (not v515 or (v515.Health <= 0)) then
                                        local v571 = 0;
                                        local v572;
                                        while true do
                                            if (v571 == (0)) then
                                                v572 = 0;
                                                while true do
                                                    if ((0) == v572) then
                                                        v22 = nil;
                                                        v21 = false;
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        break
                    end
                    if (v408 == (2)) then
                        v412 = nil;
                        if (v411 == 'NearestPart') then
                            v412 = v84(v409);
                        else
                            v412 = v409:FindFirstChild(v411);
                        end
                        v408 = 3;
                    end
                    if (v408 == 1) then
                        if (not v410 or (v410.Health <= 0)) then
                            local v516 = 0;
                            while true do
                                if (v516 == (0)) then
                                    v22 = nil;
                                    v21 = false;
                                    v516 = 1;
                                end
                                if (v516 == (1)) then
                                    return
                                end
                            end
                        end
                        v411 = v8.SilentAim.Part;
                        v408 = 2;
                    end
                    if (v408 == 0) then
                        v409 = v22.Character;
                        v410 = v409:FindFirstChildOfClass('Humanoid');
                        v408 = 1;
                    end
                end
            end
            break
        end
        if (v237 == (0)) then
            v23.Position = v11:GetMouseLocation();
            v23.Visible = v8.SilentAim.FOV.Visible;
            v237 = 1;
        end
        if (v237 == (2)) then
            v23.Filled = v8.SilentAim.FOV.Filled;
            v23.Transparency = v8.SilentAim.FOV.Transparency;
            v237 = 3;
        end
    end
end);
v10.RenderStepped:Connect(function(v238)
    if (v8.Misc.WalkSpeedEnabled and v13.Character and v13.Character:FindFirstChild('Humanoid')) then
        if (v13.Character.Humanoid.WalkSpeed ~= v8.Misc.WalkSpeedValue) then
            v13.Character.Humanoid.WalkSpeed = v8.Misc.WalkSpeedValue;
        end
    end
    if (v8.TargetAim.TargetStrafe.Enabled and v18 and v17 and v13.Character and v13.Character:FindFirstChild('HumanoidRootPart')) then
        local v316 = 0;
        local v317;
        while true do
            if (v316 == 0) then
                v317 = v17.Character;
                if (v317 and v317:FindFirstChild('HumanoidRootPart')) then
                    local v448 = 0;
                    local v449;
                    local v450;
                    local v451;
                    local v452;
                    while true do
                        if (v448 == 1) then
                            v450 = math.sin(v20) * v8.TargetAim.TargetStrafe.Radius ;
                            v451 = v317.HumanoidRootPart.Position;
                            v448 = 2;
                        end
                        if (v448 == 0) then
                            v20 = v20 + ((v8.TargetAim.TargetStrafe.Speed / v8.TargetAim.TargetStrafe.Radius) * v238) ;
                            v449 = math.cos(v20) * v8.TargetAim.TargetStrafe.Radius ;
                            v448 = 1;
                        end
                        if (v448 == (2)) then
                            v452 = Vector3.new(v451.X + v449, v13.Character.HumanoidRootPart.Position.Y, v451.Z + v450);
                            v13.Character.HumanoidRootPart.CFrame = CFrame.new(v452, v451);
                            break
                        end
                    end
                end
                break
            end
        end
    end
    if v8.HitboxExpander.Enabled then
        for v365, v366 in pairs(v9:GetPlayers()) do
            if ((v366 ~= v13) and v366.Character and v366.Character:FindFirstChild('HumanoidRootPart')) then
                local v414 = 0;
                local v415;
                while true do
                    if (v414 == 0) then
                        v415 = v366.Character.HumanoidRootPart;
                        pcall(function()
                            local v493 = 0;
                            while true do
                                if (v493 == (1)) then
                                    v415.Color = v8.HitboxExpander.Color;
                                    v415.Material = Enum.Material.ForceField;
                                    v493 = 2;
                                end
                                if ((2) == v493) then
                                    v415.CanCollide = false;
                                    break
                                end
                                if (v493 == (0)) then
                                    v415.Size = Vector3.new(v8.HitboxExpander.SizeX, v8.HitboxExpander.SizeY, v8.HitboxExpander.SizeZ);
                                    v415.Transparency = v8.HitboxExpander.Transparency;
                                    v493 = 1;
                                end
                            end
                        end);
                        break
                    end
                end
            end
        end
    end
    if (v8.Visuals.TargetDot.Enabled and v18 and v17) then
        local v318 = 0;
        local v319;
        while true do
            if ((0) == v318) then
                v319 = v17.Character;
                if (v319 and v319:FindFirstChild(v8.TargetAim.Part) and v319:FindFirstChild('Humanoid') and (v319.Humanoid.Health > 0)) then
                    local v453 = v319:FindFirstChild(v8.TargetAim.Part);
                    local v454, v455 = v15:WorldToScreenPoint(v453.Position);
                    if v455 then
                        local v494 = 0;
                        local v495;
                        while true do
                            if (v494 == (1)) then
                                v73.Visible = true;
                                break
                            end
                            if (v494 == (0)) then
                                local v559 = 0;
                                while true do
                                    if (v559 == (1)) then
                                        v494 = 1;
                                        break
                                    end
                                    if (v559 == 0) then
                                        v495 = game:GetService('GuiService'):GetGuiInset().Y;
                                        v73.Position = Vector2.new(v454.X, v454.Y + v495);
                                        v559 = 1;
                                    end
                                end
                            end
                        end
                    else
                        v73.Visible = false;
                    end
                else
                    v73.Visible = false;
                end
                break
            end
        end
    else
        v73.Visible = false;
    end
end);
local v88 = v13;
local v89 = v11;
local v90 = false;
local v91;
local function v92()
    v91 = v88.Character and v88.Character:FindFirstChildOfClass('Tool') ;
end
local function v93()
    while v90 and v8.Misc.RapidFireEnabled do
        if v91 then
            v91:Activate();
        end
        wait(v8.Misc.FireRate);
    end
end
v89.InputBegan:Connect(function(v239)
    if ((v239.UserInputType == Enum.UserInputType.MouseButton1) and v8.Misc.RapidFireEnabled) then
        local v321 = 0;
        local v322;
        while true do
            if (v321 == (0)) then
                v322 = 0;
                while true do
                    if ((0) == v322) then
                        v92();
                        if v91 then
                            local v519 = 0;
                            local v520;
                            while true do
                                if (v519 == (0)) then
                                    v520 = 0;
                                    while true do
                                        if (0 == v520) then
                                            v90 = true;
                                            v93();
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        break
                    end
                end
                break
            end
        end
    end
end);
v89.InputEnded:Connect(function(v240)
    if (v240.UserInputType == Enum.UserInputType.MouseButton1) then
        v90 = false;
    end
end);
v54:toggle({
    name = 'Rapid Fire',
    def = v8.Misc.RapidFireEnabled,
    callback = function(v241)
        local v242 = 0;
        while true do
            if ((0) == v242) then
                v8.Misc.RapidFireEnabled = v241;
                v45((v241 and 'Rapid Fire Enabled') or 'Rapid Fire Disabled');
                break
            end
        end
    end
});
v54:slider({
    name = 'Fire Rate',
    def = v8.Misc.FireRate,
    max = 10,
    min = 0,
    rounding = false,
    callback = function(v243)
        v8.Misc.FireRate = v243;
    end
});
v54:toggle({
    name = 'No Jump Cooldown',
    def = v8.Misc.NoJumpCooldownEnabled,
    callback = function(v245)
        local v246 = 0;
        while true do
            if (v246 == 1) then
                v72();
                break
            end
            if (v246 == (0)) then
                v8.Misc.NoJumpCooldownEnabled = v245;
                v45((v245 and 'No Jump Cooldown Enabled') or 'No Jump Cooldown Disabled');
                v246 = 1;
            end
        end
    end
});
v51:toggle({
    name = 'Highlight Target',
    def = v8.Visuals.Highlight.Enabled,
    callback = function(v247)
        local v248 = 0;
        while true do
            if (v248 == 0) then
                v8.Visuals.Highlight.Enabled = v247;
                if (not v247 and v19) then
                    local v417 = 0;
                    local v418;
                    while true do
                        if (v417 == 0) then
                            v418 = 0;
                            while true do
                                if ((0) == v418) then
                                    v19:Destroy();
                                    v19 = nil;
                                    v418 = 1;
                                end
                                if (v418 == (1)) then
                                    v45('Highlight Disabled');
                                    break
                                end
                            end
                            break
                        end
                    end
                elseif (v247 and v17) then
                    v45('Highlight Enabled');
                end
                break
            end
        end
    end
});
v51:colorpicker({
    name = 'Highlight Color',
    def = v8.Visuals.Highlight.Color,
    callback = function(v249)
        local v250 = 0;
        while true do
            if (v250 == (0)) then
                v8.Visuals.Highlight.Color = v249;
                if v19 then
                    v19.FillColor = v249;
                end
                break
            end
        end
    end
});
v51:colorpicker({
    name = 'Highlight Outline Color',
    def = v8.Visuals.Highlight.OutlineColor,
    callback = function(v251)
        local v252 = 0;
        local v253;
        while true do
            if (v252 == (0)) then
                v253 = 0;
                while true do
                    if (v253 == (0)) then
                        v8.Visuals.Highlight.OutlineColor = v251;
                        if v19 then
                            v19.OutlineColor = v251;
                        end
                        break
                    end
                end
                break
            end
        end
    end
});
v51:toggle({
    name = 'Target Dot',
    def = v8.Visuals.TargetDot.Enabled,
    callback = function(v254)
        local v255 = 0;
        while true do
            if (v255 == (0)) then
                v8.Visuals.TargetDot.Enabled = v254;
                v73.Visible = v254 and v18 and (v17 ~= nil) ;
                v255 = 1;
            end
            if (v255 == (1)) then
                v45((v254 and 'Target Dot Enabled') or 'Target Dot Disabled');
                break
            end
        end
    end
});
v51:slider({
    name = 'Dot Size',
    def = v8.Visuals.TargetDot.Size,
    max = 20,
    min = 1,
    rounding = false,
    callback = function(v256)
        local v257 = 0;
        while true do
            if ((0) == v257) then
                v8.Visuals.TargetDot.Size = v256;
                v73.Radius = v256;
                v257 = 1;
            end
            if (v257 == (1)) then
                v45('Target Dot Size Set to: ' .. v256);
                break
            end
        end
    end
});
v51:colorpicker({
    name = 'Dot Color',
    def = v8.Visuals.TargetDot.Color,
    callback = function(v258)
        local v259 = 0;
        local v260;
        while true do
            if (v259 == (0)) then
                v260 = 0;
                while true do
                    if (v260 == 0) then
                        v8.Visuals.TargetDot.Color = v258;
                        v73.Color = v258;
                        v260 = 1;
                    end
                    if (v260 == (1)) then
                        v45('Target Dot Color Set');
                        break
                    end
                end
                break
            end
        end
    end
});
local function v94()
    local v261 = 0;
    local v262;
    local v263;
    while true do
        if (v261 == 1) then
            return v262
        end
        if (v261 == 0) then
            local v375 = 0;
            while true do
                if (v375 == (1)) then
                    v261 = 1;
                    break
                end
                if (v375 == (0)) then
                    v262, v263 = nil, v8.TargetAim.LockRadius;
                    for v457, v458 in pairs(v9:GetPlayers()) do
                        if ((v458 ~= v13) and v458.Character and v458.Character:FindFirstChild('HumanoidRootPart')) then
                            local v497 = 0;
                            local v498;
                            local v499;
                            local v500;
                            while true do
                                if (v497 == (0)) then
                                    v498 = 0;
                                    v499 = nil;
                                    v497 = 1;
                                end
                                if ((1) == v497) then
                                    v500 = nil;
                                    while true do
                                        if (v498 == 0) then
                                            v499, v500 = v15:WorldToScreenPoint(v458.Character.HumanoidRootPart.Position);
                                            if v500 then
                                                local v578 = 0;
                                                local v579;
                                                while true do
                                                    if (v578 == (0)) then
                                                        v579 = (Vector2.new(v499.X, v499.Y) - Vector2.new(v14.X, v14.Y)).Magnitude;
                                                        if (v579 < v263) then
                                                            v262, v263 = v458, v579;
                                                        end
                                                        break
                                                    end
                                                end
                                            end
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                    end
                    v375 = 1;
                end
            end
        end
    end
end
local v95 = getrawmetatable(game);
setreadonly(v95, false);
local v96 = v95.__index;
v95.__index = newcclosure(function(v264, v265)
    local v266 = 0;
    while true do
        if (v266 == 0) then
            if (not checkcaller() and (v264 == v14)) then
                local v420 = 0;
                while true do
                    if (v420 == (0)) then
                        if (v8.TargetAim.Enabled and v18 and v17) then
                            local v521 = v17.Character;
                            local v522 = v8.TargetAim.Part;
                            local v523 = v8.TargetAim.PredictionX;
                            local v524 = v8.TargetAim.PredictionY;
                            local v525 = v8.TargetAim.PredictionMovement;
                            if (v521 and v521:FindFirstChild('HumanoidRootPart') and v521:FindFirstChild('Humanoid') and (v521.Humanoid.Health > 0)) then
                                local v560 = 0;
                                local v561;
                                while true do
                                    if ((0) == v560) then
                                        v561 = v521:FindFirstChild(v522);
                                        if v561 then
                                            local v580 = 0;
                                            local v581;
                                            while true do
                                                if (v580 == (0)) then
                                                    v581 = v561.Position;
                                                    if v525 then
                                                        v581 = v581 + Vector3.new(v561.Velocity.X * v523, v561.Velocity.Y * v524, v561.Velocity.Z * v523) ;
                                                    end
                                                    v580 = 1;
                                                end
                                                if (v580 == 1) then
                                                    v16 = v581;
                                                    if (v265 == 'Hit') then
                                                        return CFrame.new(v581, v581 + (v561.Position - v15.CFrame.Position).Unit)
                                                    elseif (v265 == 'Target') then
                                                        return v561
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                        break
                                    end
                                end
                            else
                                local v562 = 0;
                                local v563;
                                while true do
                                    if (v562 == (0)) then
                                        v563 = 0;
                                        while true do
                                            if (v563 == 0) then
                                                if (not v16 and v521 and v521:FindFirstChild('HumanoidRootPart')) then
                                                    local v597 = 0;
                                                    while true do
                                                        if (v597 == (0)) then
                                                            v16 = v521.HumanoidRootPart.Position;
                                                            v45('Target ' .. v17.DisplayName .. ' died, locking on last position');
                                                            break
                                                        end
                                                    end
                                                end
                                                if v16 then
                                                    if (v265 == 'Hit') then
                                                        return CFrame.new(v16, v16 + (v16 - v15.CFrame.Position).Unit)
                                                    elseif (v265 == 'Target') then
                                                        return nil
                                                    end
                                                end
                                                break
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                        end
                        if v8.SilentAim.Enabled then
                            local v526 = 0;
                            local v527;
                            while true do
                                if (v526 == 0) then
                                    v527 = 0;
                                    while true do
                                        if (v527 == 0) then
                                            v22 = v87(v8.SilentAim.FOV.Size);
                                            if (v22 and v22.Character) then
                                                local v590 = 0;
                                                local v591;
                                                local v592;
                                                local v593;
                                                while true do
                                                    if (v590 == (1)) then
                                                        v593 = nil;
                                                        if (v592 == 'NearestPart') then
                                                            v593 = v84(v591);
                                                        else
                                                            v593 = v591:FindFirstChild(v592);
                                                        end
                                                        v590 = 2;
                                                    end
                                                    if (v590 == 0) then
                                                        v591 = v22.Character;
                                                        v592 = v8.SilentAim.Part;
                                                        v590 = 1;
                                                    end
                                                    if (v590 == (2)) then
                                                        if v593 then
                                                            local v601 = v593.Velocity or Vector3.zero ;
                                                            local v602 = v593.Position + (v601 * v8.SilentAim.Prediction) ;
                                                            if (v265 == 'Hit') then
                                                                return CFrame.new(v602)
                                                            elseif (v265 == 'Target') then
                                                                return v593
                                                            end
                                                        end
                                                        break
                                                    end
                                                end
                                            end
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        break
                    end
                end
            end
            return v96(v264, v265)
        end
    end
end);
setreadonly(v95, true);
v10.Heartbeat:Connect(function()
    if (not v8.TargetAim.Enabled or not v18 or not v17) then
        local v323 = 0;
        local v324;
        while true do
            if (v323 == (0)) then
                v324 = 0;
                while true do
                    if (v324 == (0)) then
                        if v19 then
                            local v528 = 0;
                            while true do
                                if (v528 == (0)) then
                                    v19:Destroy();
                                    v19 = nil;
                                    break
                                end
                            end
                        end
                        v73.Visible = false;
                        break
                    end
                end
                break
            end
        end
    else
        local v325 = v17.Character;
        if (v325 and v325:FindFirstChild('HumanoidRootPart') and v325:FindFirstChild('Humanoid') and (v325.Humanoid.Health > (0))) then
            if v8.Visuals.Highlight.Enabled then
                if not v19 then
                    v19 = Instance.new('Highlight');
                    v19.Adornee = v325;
                    v19.FillColor = v8.Visuals.Highlight.Color;
                    v19.OutlineColor = v8.Visuals.Highlight.OutlineColor;
                    v19.FillTransparency = v8.Visuals.Highlight.Transparency;
                    v19.OutlineTransparency = 0;
                    v19.Parent = game.CoreGui;
                    v45('Highlight applied to: ' .. v17.DisplayName);
                else
                    local v486 = 0;
                    while true do
                        if ((1) == v486) then
                            v19.OutlineColor = v8.Visuals.Highlight.OutlineColor;
                            v19.FillTransparency = v8.Visuals.Highlight.Transparency;
                            break
                        end
                        if (v486 == (0)) then
                            v19.Adornee = v325;
                            v19.FillColor = v8.Visuals.Highlight.Color;
                            v486 = 1;
                        end
                    end
                end
            elseif v19 then
                local v487 = 0;
                while true do
                    if (v487 == (0)) then
                        v19:Destroy();
                        v19 = nil;
                        break
                    end
                end
            end
        else
            local v380 = 0;
            while true do
                if (v380 == (0)) then
                    if v19 then
                        local v501 = 0;
                        while true do
                            if (v501 == (0)) then
                                v19:Destroy();
                                v19 = nil;
                                break
                            end
                        end
                    end
                    v73.Visible = false;
                    break
                end
            end
        end
        local v326 = v13.Character and v13.Character:FindFirstChildOfClass('Tool') ;
        if (v326 and v326:FindFirstChild('Activate')) then
            local v381 = v8.TargetAim.Part;
            local v382;
            if (v325 and v325:FindFirstChild('HumanoidRootPart') and v325:FindFirstChild('Humanoid') and (v325.Humanoid.Health > 0)) then
                local v436 = 0;
                while true do
                    if (v436 == 0) then
                        v382 = v325:FindFirstChild(v381);
                        if v382 then
                            v326:Activate();
                        end
                        break
                    end
                end
            end
        end
    end
end);
v11.InputBegan:Connect(function(v267, v268)
    local v269 = 0;
    local v270;
    while true do
        if (v269 == (0)) then
            v270 = 0;
            while true do
                if (v270 == 0) then
                    if v268 then
                        return
                    end
                    if (v267.KeyCode == Enum.KeyCode[v8.TargetAim.Keybind:upper()]) then
                        v18 = not v18;
                        if v18 then
                            local v529 = 0;
                            local v530;
                            while true do
                                if (v529 == 0) then
                                    v530 = 0;
                                    while true do
                                        if (v530 == (1)) then
                                            v20 = 0;
                                            if v17 then
                                                v45('Locked onto: ' .. v17.DisplayName);
                                            else
                                                v45('No target found');
                                            end
                                            break
                                        end
                                        if (v530 == 0) then
                                            v17 = v94();
                                            v16 = nil;
                                            v530 = 1;
                                        end
                                    end
                                    break
                                end
                            end
                        else
                            local v531 = 0;
                            while true do
                                if (v531 == 2) then
                                    v16 = nil;
                                    break
                                end
                                if (v531 == (1)) then
                                    v73.Visible = false;
                                    v17 = nil;
                                    v531 = 2;
                                end
                                if (0 == v531) then
                                    if v17 then
                                        v45('Unlocked from: ' .. v17.DisplayName);
                                    end
                                    if v19 then
                                        local v575 = 0;
                                        local v576;
                                        while true do
                                            if (v575 == 0) then
                                                v576 = 0;
                                                while true do
                                                    if (v576 == (0)) then
                                                        v19:Destroy();
                                                        v19 = nil;
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end
                                    v531 = 1;
                                end
                            end
                        end
                    end
                    break
                end
            end
            break
        end
    end
end);
local function v98()
    if v17 then
        v17.CharacterAdded:Connect(function()
            local v376 = 0;
            while true do
                if (v376 == (1)) then
                    v20 = 0;
                    if v19 then
                        local v488 = 0;
                        while true do
                            if (v488 == 0) then
                                v19:Destroy();
                                v19 = nil;
                                break
                            end
                        end
                    end
                    v376 = 2;
                end
                if (v376 == (2)) then
                    v73.Visible = false;
                    break
                end
                if (v376 == (0)) then
                    if v18 then
                        v45('Target ' .. v17.DisplayName .. ' respawned, re-locked');
                    end
                    v16 = nil;
                    v376 = 1;
                end
            end
        end);
    end
end
v9.PlayerAdded:Connect(function(v271)
    if (v271 == v17) then
        v98();
    end
end);
for v272, v273 in ipairs(v88.Character:GetChildren()) do
    if (v273:IsA('Script') and (v273.Name ~= 'Health') and (v273.Name ~= 'Sound')) then
        v273:Destroy();
    elseif v273:FindFirstChild('LocalScript') then
        v273:Destroy();
    end
end
v88.CharacterAdded:Connect(function(v274)
    local v275 = 0;
    while true do
        if (v275 == (0)) then
            repeat
                wait(9.999999999999432E-2);
            until v274
            v274.ChildAdded:Connect(function(v383)
                if (v383:IsA('Script') and v383:FindFirstChild('LocalScript')) then
                    local v438 = 0;
                    while true do
                        if (v438 == (0)) then
                            wait(0.5);
                            v383.LocalScript:FireServer();
                            break
                        end
                    end
                end
            end);
            break
        end
    end
end);
for v276, v277 in ipairs(getconnections(v15.Changed)) do
    v277:Disable();
end
for v278, v279 in ipairs(getconnections(v15:GetPropertyChangedSignal('CFrame'))) do
    v279:Disable();
end
for v280, v281 in next, getgc(true) do
    local function v282(v291)
        if (pcall(function()
            return rawget(v281, v291)
        end) and (typeof(rawget(v281, v291)) == 'table') and ((rawget(v281, v291))[1] == 'kick')) then
            v281.tvk = {
                'kick',
                function()
                    return game.Workspace:WaitForChild("")
                end
            };
        end
    end
    v282('indexInstance');
    v282('namecallInstance');
end
game:BindToClose(function()
    local v283 = 0;
    local v284;
    while true do
        if (v283 == (0)) then
            v284 = 0;
            while true do
                if ((1) == v284) then
                    if v30 then
                        v30:Disconnect();
                    end
                    break
                end
                if (v284 == (0)) then
                    if v25 then
                        v25:Destroy();
                    end
                    if v28 then
                        v28:Destroy();
                    end
                    v284 = 1;
                end
            end
            break
        end
    end
end);
