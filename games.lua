--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0=game:GetService("UserInputService");local v1=game:GetService("TeleportService");local v2=game:GetService("TweenService");local v3=Instance.new("ScreenGui");local v4=Instance.new("Frame");local v5=Instance.new("TextLabel");local v6=Instance.new("TextBox");local v7=Instance.new("ScrollingFrame");local v8=Instance.new("ScrollingFrame");local v9=Instance.new("TextLabel");local v10=Instance.new("TextBox");local v11=Instance.new("TextButton");local v12=Instance.new("TextButton");local v13=Instance.new("UICorner");local v14=Instance.new("UIStroke");v3.Parent=game.CoreGui;v3.Name="GloryPortal";v4.Size=UDim2.new(0,1501 -(21 + 880) ,0 + 0 ,350);v4.Position=UDim2.new(957.5 -(892 + 65) , -300,0.5 -0 , -(323 -148));v4.BackgroundColor3=Color3.fromRGB(55 -25 ,380 -(87 + 263) ,210 -(67 + 113) );v4.Parent=v3;v4.Active=true;v4.Draggable=true;v13:Clone().Parent=v4;v14:Clone().Parent=v4;v5.Text="🌟 Glory Portal";v5.Size=UDim2.new(1 + 0 ,0,0,73 -43 );v5.BackgroundColor3=Color3.fromRGB(40,30 + 10 ,158 -118 );v5.TextColor3=Color3.fromRGB(1207 -(802 + 150) ,686 -431 ,255);v5.Font=Enum.Font.GothamBold;v5.TextSize=39 -17 ;v5.Parent=v4;v13:Clone().Parent=v5;local function v34(v89,v90,v91,v92,v93,v94) local v95=0 + 0 ;local v96;while true do if (v95==(999 -(915 + 82))) then v96.Parent=v94;v13:Clone().Parent=v96;return v96;end if (v95==(2 -1)) then v96.BackgroundColor3=v92;v96.TextColor3=v93;v96.Font=Enum.Font.GothamBold;v96.TextSize=20;v95=2;end if (v95==(0 + 0)) then v96=Instance.new("TextButton");v96.Text=v89;v96.Size=v90;v96.Position=v91;v95=1 -0 ;end end end v11=v34("✖",UDim2.new(1187 -(1069 + 118) ,68 -38 ,0 -0 ,6 + 24 ),UDim2.new(1 -0 , -(35 + 0),791 -(368 + 423) ,0),Color3.fromRGB(125 -85 ,58 -(10 + 8) ,40),Color3.fromRGB(255,307 -227 ,522 -(416 + 26) ),v4);v12=v34("♻",UDim2.new(0,95 -65 ,0,13 + 17 ),UDim2.new(1 -0 , -70,438 -(145 + 293) ,430 -(44 + 386) ),Color3.fromRGB(1526 -(998 + 488) ,13 + 27 ,33 + 7 ),Color3.fromRGB(80,1027 -(201 + 571) ,1218 -(116 + 1022) ),v4);local v35=v34("➖",UDim2.new(0 -0 ,30,0,18 + 12 ),UDim2.new(3 -2 , -(372 -267),859 -(814 + 45) ,0 -0 ),Color3.fromRGB(40,3 + 37 ,15 + 25 ),Color3.fromRGB(1140 -(261 + 624) ,255,255),v4);local v36=TweenInfo.new(0.25 -0 ,Enum.EasingStyle.Quad);local v37=false;v35.MouseButton1Click:Connect(function() local v97=0;local v98;while true do if (v97==2) then v7.Visible= not v37;v6.Visible= not v37;v97=3;end if (v97==(1083 -(1020 + 60))) then v10.Visible= not v37;v9.Visible= not v37;v97=1427 -(630 + 793) ;end if (v97==1) then v2:Create(v4,v36,{Size=v98}):Play();v8.Visible= not v37;v97=6 -4 ;end if (v97==(0 -0)) then v37= not v37;v98=(v37 and UDim2.new(0 + 0 ,688 -488 ,1747 -(760 + 987) ,1943 -(1789 + 124) )) or UDim2.new(766 -(745 + 21) ,207 + 393 ,0 -0 ,1372 -1022 ) ;v97=1;end if (v97==(1 + 3)) then v5.Text=(v37 and "🌟") or "🌟 Glory Portal" ;v35.Text=(v37 and "➕") or "➖" ;break;end end end);v6.PlaceholderText="🔎";v6.Size=UDim2.new(0 + 0 ,1215 -(87 + 968) ,0,110 -85 );v6.Position=UDim2.new(0,10,0 + 0 ,40);v6.BackgroundColor3=Color3.fromRGB(50,113 -63 ,1463 -(447 + 966) );v6.TextColor3=Color3.fromRGB(255,255,698 -443 );v6.Font=Enum.Font.Gotham;v6.TextSize=1833 -(1703 + 114) ;v6.Parent=v4;v13:Clone().Parent=v6;v14:Clone().Parent=v6;v6.Text="";v7.Size=UDim2.new(701 -(376 + 325) ,262 -102 ,0,800 -540 );v7.Position=UDim2.new(0,3 + 7 ,0 -0 ,84 -(9 + 5) );v7.BackgroundTransparency=377 -(85 + 291) ;v7.ScrollBarThickness=1269 -(243 + 1022) ;v7.CanvasSize=UDim2.new(0 -0 ,0,0 + 0 ,1780 -(1123 + 57) );v7.ScrollingEnabled=true;v7.Parent=v4;v8.Size=UDim2.new(0 + 0 ,654 -(163 + 91) ,0,260);v8.Position=UDim2.new(1930 -(1869 + 61) ,180,0 + 0 ,246 -176 );v8.BackgroundColor3=Color3.fromRGB(61 -21 ,6 + 34 ,54 -14 );v8.ScrollBarThickness=4 + 0 ;v8.CanvasSize=UDim2.new(0,0,1474 -(1329 + 145) ,600);v8.ScrollingEnabled=true;v8.Parent=v4;v13:Clone().Parent=v8;v14:Clone().Parent=v8;v9.Text="+ Glory Portal — select a script to run.";v9.Size=UDim2.new(972 -(140 + 831) ,1850 -(1409 + 441) ,718 -(15 + 703) ,17 + 18 );v9.Position=UDim2.new(0,438 -(262 + 176) ,0,1721 -(345 + 1376) );v9.BackgroundColor3=Color3.fromRGB(50,738 -(198 + 490) ,50);v9.TextColor3=Color3.fromRGB(255,255,255);v9.Font=Enum.Font.Gotham;v9.TextSize=70 -54 ;v9.TextWrapped=true;v9.TextYAlignment=Enum.TextYAlignment.Center;v9.Parent=v8;v13:Clone().Parent=v9;v10.PlaceholderText="🔎";v10.Size=UDim2.new(0 -0 ,1586 -(696 + 510) ,0,25);v10.Position=UDim2.new(0,10,0 -0 ,1302 -(1091 + 171) );v10.BackgroundColor3=Color3.fromRGB(50,50,50);v10.TextColor3=Color3.fromRGB(42 + 213 ,802 -547 ,845 -590 );v10.Font=Enum.Font.Gotham;v10.TextSize=390 -(123 + 251) ;v10.Parent=v8;v13:Clone().Parent=v10;v14:Clone().Parent=v10;v10.Text="";local v82={["Arise Crossover"]={["TWVZ HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua"))()'},Deepwoken={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},["Ro Ghoul"]={["SIGNAL HUB"]='loadstring(game:HttpGet("https://rawscripts.net/raw/Ro-Ghoul-ALPHA-Signal-Hub-23257"))()'},["Ghoul Re"]={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},["Anime Last Stand"]={["BUANGERS HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua"))()'},["Rune Slayer"]={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},Fisch={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},Mountfall={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},["Giant Simulator"]={["SIGNAL HUB"]='loadstring(game:HttpGet("https://rawscripts.net/raw/GiantSimulatorSignalHub_44088"))()'},["Mushyo / Universal Mic"]={["KSX HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/ksx1s/ksx-s/refs/heads/main/Panel"))()'}};local v83={v11,v12,v35};local v84={"Exit","Rejoin","Minimize"};for v99,v100 in ipairs(v83) do v100.MouseEnter:Connect(function() v9.Text=v84[v99];end);v100.MouseLeave:Connect(function() v9.Text="+ Glory Portal — select a script to run.";end);end local function v85(v101) v8.CanvasSize=UDim2.new(202 -(14 + 188) ,675 -(534 + 141) ,0 + 0 ,531 + 69 );for v151,v152 in ipairs(v8:GetChildren()) do if (v152:IsA("TextButton") and (v152.Name~="InfoBox") and (v152.Name~="ScriptSearch")) then v152:Destroy();end end local v103=68 + 2 ;for v153,v154 in pairs(v82[v101] or {} ) do local v155=Instance.new("TextButton");v155.Text=v153;v155.Size=UDim2.new(0 -0 ,380,0 -0 ,30);v155.Position=UDim2.new(0 -0 ,6 + 4 ,0 + 0 ,v103);v155.BackgroundColor3=Color3.fromRGB(446 -(115 + 281) ,116 -66 ,42 + 8 );v155.TextColor3=Color3.fromRGB(616 -361 ,255,935 -680 );v155.Font=Enum.Font.Gotham;v155.TextSize=18;v155.Parent=v8;v155.Name="ScriptButton";v13:Clone().Parent=v155;v155.MouseButton1Click:Connect(function() local v182=867 -(550 + 317) ;while true do if (v182==(0 -0)) then v9.Text="Executando "   .. v153   .. "..." ;loadstring(v154)();break;end end end);v103=v103 + (56 -16) ;end v8.CanvasSize=UDim2.new(0 -0 ,285 -(134 + 151) ,0,v103 + (1685 -(970 + 695)) );end local function v86() v7.CanvasSize=UDim2.new(0 -0 ,0,1990 -(582 + 1408) ,600);for v167,v168 in ipairs(v7:GetChildren()) do if v168:IsA("TextButton") then v168:Destroy();end end local v105=0 -0 ;for v169,v170 in pairs(v82) do local v171=Instance.new("TextButton");v171.Text=v169;v171.Size=UDim2.new(1, -10,0 -0 ,113 -83 );v171.Position=UDim2.new(1824 -(1195 + 629) ,6 -1 ,241 -(187 + 54) ,v105);v171.BackgroundColor3=Color3.fromRGB(830 -(162 + 618) ,36 + 14 ,50);v171.TextColor3=Color3.fromRGB(255,170 + 85 ,543 -288 );v171.Font=Enum.Font.Gotham;v171.TextSize=26 -10 ;v171.Parent=v7;v13:Clone().Parent=v171;v171.MouseButton1Click:Connect(function() v85(v169);end);v105=v105 + 40 ;end v7.CanvasSize=UDim2.new(0,0 + 0 ,1636 -(1373 + 263) ,v105 + (1010 -(451 + 549)) );end v6:GetPropertyChangedSignal("Text"):Connect(function() local v106=0 + 0 ;local v107;while true do if (v106==0) then v107=string.lower(v6.Text);for v200,v201 in ipairs(v7:GetChildren()) do if v201:IsA("TextButton") then local v205=0 -0 ;local v206;while true do if ((0 -0)==v205) then v206=string.find(string.lower(v201.Text),v107);v201.Visible=v206~=nil ;break;end end end end break;end end end);v10:GetPropertyChangedSignal("Text"):Connect(function() local v108=1384 -(746 + 638) ;local v109;while true do if (v108==(0 + 0)) then v109=string.lower(v10.Text);for v202,v203 in ipairs(v8:GetChildren()) do if (v203:IsA("TextButton") and (v203.Name=="ScriptButton")) then local v207=0 -0 ;local v208;while true do if ((341 -(218 + 123))==v207) then v208=string.find(string.lower(v203.Text),v109);v203.Visible=v208~=nil ;break;end end end end break;end end end);v11.MouseButton1Click:Connect(function() v3:Destroy();end);v12.MouseButton1Click:Connect(function() v1:Teleport(game.PlaceId,game.Players.LocalPlayer);end);v86();local v87="https://discord.gg/TEsUuKfK6P";local v88=window:Tab("Discord");v88:Button("Copy Discord Invite",function() setclipboard(v87);local v110=game:GetService("CoreGui");local v111=Instance.new("ScreenGui");v111.Name="DiscordNotification";v111.ResetOnSpawn=false;v111.Parent=v110;local v115=Instance.new("Frame");v115.Size=UDim2.new(0,1881 -(1535 + 46) ,0 + 0 ,12 + 68 );v115.Position=UDim2.new(1, -(870 -(306 + 254)),1 + 0 , -(235 -115));v115.BackgroundColor3=Color3.fromRGB(30,1497 -(899 + 568) ,20 + 10 );v115.BorderSizePixel=0;v115.BackgroundTransparency=0.1;v115.AnchorPoint=Vector2.new(0,0 -0 );v115.Parent=v111;local v123=Instance.new("UICorner",v115);v123.CornerRadius=UDim.new(603 -(268 + 335) ,8);local v125=Instance.new("TextLabel");v125.Text="Discord Invite Copied!";v125.TextColor3=Color3.fromRGB(255,545 -(60 + 230) ,827 -(426 + 146) );v125.TextSize=18;v125.Font=Enum.Font.GothamSemibold;v125.Position=UDim2.new(0 + 0 ,10,1456 -(282 + 1174) ,5);v125.Size=UDim2.new(1, -(831 -(569 + 242)),0 -0 ,2 + 23 );v125.BackgroundTransparency=1;v125.TextXAlignment=Enum.TextXAlignment.Left;v125.Parent=v115;local v137=Instance.new("TextLabel");v137.Text=v87;v137.TextColor3=Color3.fromRGB(1194 -(706 + 318) ,1421 -(721 + 530) ,255);v137.TextSize=1287 -(945 + 326) ;v137.Font=Enum.Font.Gotham;v137.Position=UDim2.new(0 -0 ,9 + 1 ,700 -(271 + 429) ,33 + 2 );v137.Size=UDim2.new(1, -(1520 -(1408 + 92)),1086 -(461 + 625) ,1313 -(993 + 295) );v137.BackgroundTransparency=1 + 0 ;v137.TextXAlignment=Enum.TextXAlignment.Left;v137.Parent=v115;wait(1178 -(418 + 753) );v111:Destroy();end);
