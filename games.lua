--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0=game:GetService("UserInputService");local v1=game:GetService("TeleportService");local v2=game:GetService("TweenService");local v3=Instance.new("ScreenGui");local v4=Instance.new("Frame");local v5=Instance.new("TextLabel");local v6=Instance.new("TextBox");local v7=Instance.new("ScrollingFrame");local v8=Instance.new("ScrollingFrame");local v9=Instance.new("TextLabel");local v10=Instance.new("TextBox");local v11=Instance.new("TextButton");local v12=Instance.new("TextButton");local v13=Instance.new("UICorner");local v14=Instance.new("UIStroke");v3.Parent=game.CoreGui;v3.Name="GloryPortal";v4.Size=UDim2.new(0 -0 ,129 + 471 ,1954 -(508 + 1446) ,255 + 95 );v4.Position=UDim2.new(997.5 -(915 + 82) , -(849 -549),0.5 + 0 , -175);v4.BackgroundColor3=Color3.fromRGB(30,30,39 -9 );v4.Parent=v3;v4.Active=true;v4.Draggable=true;v13:Clone().Parent=v4;v14:Clone().Parent=v4;v5.Text="🌟 Glory Portal";v5.Size=UDim2.new(1188 -(1069 + 118) ,0,0 -0 ,65 -35 );v5.BackgroundColor3=Color3.fromRGB(7 + 33 ,71 -31 ,40 + 0 );v5.TextColor3=Color3.fromRGB(1046 -(368 + 423) ,255,801 -546 );v5.Font=Enum.Font.GothamBold;v5.TextSize=40 -(10 + 8) ;v5.Parent=v4;v13:Clone().Parent=v5;local function v34(v91,v92,v93,v94,v95,v96) local v97=Instance.new("TextButton");v97.Text=v91;v97.Size=v92;v97.Position=v93;v97.BackgroundColor3=v94;v97.TextColor3=v95;v97.Font=Enum.Font.GothamBold;v97.TextSize=76 -56 ;v97.Parent=v96;v13:Clone().Parent=v97;return v97;end v11=v34("✖",UDim2.new(442 -(416 + 26) ,30,0,95 -65 ),UDim2.new(1 + 0 , -35,0,0),Color3.fromRGB(70 -30 ,40,40),Color3.fromRGB(693 -(145 + 293) ,510 -(44 + 386) ,1566 -(998 + 488) ),v4);v12=v34("♻",UDim2.new(0 + 0 ,25 + 5 ,772 -(201 + 571) ,1168 -(116 + 1022) ),UDim2.new(4 -3 , -(42 + 28),0,0 -0 ),Color3.fromRGB(40,142 -102 ,40),Color3.fromRGB(939 -(814 + 45) ,628 -373 ,5 + 75 ),v4);local v35=v34("➖",UDim2.new(0 + 0 ,30,0,30),UDim2.new(886 -(261 + 624) , -(186 -81),1080 -(1020 + 60) ,1423 -(630 + 793) ),Color3.fromRGB(135 -95 ,40,189 -149 ),Color3.fromRGB(101 + 154 ,877 -622 ,255),v4);local v36=TweenInfo.new(1747.25 -(760 + 987) ,Enum.EasingStyle.Quad);local v37=false;v35.MouseButton1Click:Connect(function() local v108=1913 -(1789 + 124) ;local v109;while true do if (v108==(768 -(745 + 21))) then v5.Text=(v37 and "🌟") or "🌟 Glory Portal" ;v35.Text=(v37 and "➕") or "➖" ;if v37 then CopyDiscordButton.Position=UDim2.new(0 + 0 ,27 -17 ,3 -2 , -(1 + 39));else CopyDiscordButton.Position=UDim2.new(0 + 0 ,10,1056 -(87 + 968) , -80);end break;end if (v108==1) then v7.Visible= not v37;v6.Visible= not v37;v10.Visible= not v37;v9.Visible= not v37;v108=8 -6 ;end if (v108==0) then v37= not v37;v109=(v37 and UDim2.new(0 + 0 ,200,0 -0 ,1443 -(447 + 966) )) or UDim2.new(0 -0 ,2417 -(1703 + 114) ,701 -(376 + 325) ,573 -223 ) ;v2:Create(v4,v36,{Size=v109}):Play();v8.Visible= not v37;v108=2 -1 ;end end end);v6.PlaceholderText="🔎";v6.Size=UDim2.new(0 + 0 ,352 -192 ,0,39 -(9 + 5) );v6.Position=UDim2.new(376 -(85 + 291) ,1275 -(243 + 1022) ,0 -0 ,33 + 7 );v6.BackgroundColor3=Color3.fromRGB(50,1230 -(1123 + 57) ,41 + 9 );v6.TextColor3=Color3.fromRGB(255,255,255);v6.Font=Enum.Font.Gotham;v6.TextSize=16;v6.Parent=v4;v13:Clone().Parent=v6;v14:Clone().Parent=v6;v6.Text="";v7.Size=UDim2.new(254 -(163 + 91) ,2090 -(1869 + 61) ,0 + 0 ,915 -655 );v7.Position=UDim2.new(0 -0 ,10,0 + 0 ,70);v7.BackgroundTransparency=1 -0 ;v7.ScrollBarThickness=4;v7.CanvasSize=UDim2.new(0 + 0 ,1474 -(1329 + 145) ,0,600);v7.ScrollingEnabled=true;v7.Parent=v4;v8.Size=UDim2.new(971 -(140 + 831) ,400,1850 -(1409 + 441) ,978 -(15 + 703) );v8.Position=UDim2.new(0 + 0 ,618 -(262 + 176) ,0,1791 -(345 + 1376) );v8.BackgroundColor3=Color3.fromRGB(728 -(198 + 490) ,40,176 -136 );v8.ScrollBarThickness=9 -5 ;v8.CanvasSize=UDim2.new(1206 -(696 + 510) ,0,0,600);v8.ScrollingEnabled=true;v8.Parent=v4;v13:Clone().Parent=v8;v14:Clone().Parent=v8;v9.Text="+ Glory Portal — join discord.gg/TEsUuKfK6P";v9.Size=UDim2.new(1 -0 ,1262 -(1091 + 171) ,0,6 + 29 );v9.Position=UDim2.new(0 -0 ,0,0,0);v9.BackgroundColor3=Color3.fromRGB(165 -115 ,424 -(123 + 251) ,248 -198 );v9.TextColor3=Color3.fromRGB(255,255,953 -(208 + 490) );v9.Font=Enum.Font.Gotham;v9.TextSize=16;v9.TextWrapped=true;v9.TextYAlignment=Enum.TextYAlignment.Center;v9.Parent=v8;v13:Clone().Parent=v9;v10.PlaceholderText="🔎";v10.Size=UDim2.new(0 + 0 ,170 + 210 ,836 -(660 + 176) ,4 + 21 );v10.Position=UDim2.new(202 -(14 + 188) ,685 -(534 + 141) ,0,40);v10.BackgroundColor3=Color3.fromRGB(50,50,21 + 29 );v10.TextColor3=Color3.fromRGB(226 + 29 ,255,255);v10.Font=Enum.Font.Gotham;v10.TextSize=16 + 0 ;v10.Parent=v8;v13:Clone().Parent=v10;v14:Clone().Parent=v10;v10.Text="";local v82={["Arise Crossover"]={["TWVZ HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua"))()'},Deepwoken={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},["Ro Ghoul"]={["SIGNAL HUB"]='loadstring(game:HttpGet("https://rawscripts.net/raw/Ro-Ghoul-ALPHA-Signal-Hub-23257"))()'},["Ghoul Re"]={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},["Anime Last Stand"]={["BUANGERS HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua"))()'},["Rune Slayer"]={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},Fisch={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},Mountfall={["ZYG HUB"]='loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/be048f755784fb48ec3c5206c0c97d18.lua"))()'},["Giant Simulator"]={["SIGNAL HUB"]='loadstring(game:HttpGet("https://rawscripts.net/raw/GiantSimulatorSignalHub_44088"))()'},["Mushyo / Universal Mic"]={["KSX HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/ksx1s/ksx-s/refs/heads/main/Panel"))()'},["Anime Rangers X"]={["WINNABLE HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/Winnable-Hub/Loader/refs/heads/main/Loader.Lua"))()',["HYPER HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/all-script-2/refs/heads/main/loader.lua"))()'},["King Legacy"]={["HYPER HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/all-script-2/refs/heads/main/loader.lua"))()'},["Project JOJO 2"]={["HYPER HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/all-script-2/refs/heads/main/loader.lua"))()'},["Anime Shadow"]={["HYPER HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/all-script-2/refs/heads/main/loader.lua"))()'},["Verse Piece"]={["HYPER HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/all-script-2/refs/heads/main/loader.lua"))()'},["Blox Fruits"]={["HYPER HUB"]='loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/all-script-2/refs/heads/main/loader.lua"))()'}};local v83={v11,v12,v35};local v84={"Exit","Rejoin","Minimize"};for v110,v111 in ipairs(v83) do v111.MouseEnter:Connect(function() v9.Text=v84[v110];end);v111.MouseLeave:Connect(function() v9.Text="+ Glory Portal — join discord.gg/TEsUuKfK6P.";end);end local function v85(v112) v8.CanvasSize=UDim2.new(0,0 + 0 ,396 -(115 + 281) ,1395 -795 );for v128,v129 in ipairs(v8:GetChildren()) do if (v129:IsA("TextButton") and (v129.Name~="InfoBox") and (v129.Name~="ScriptSearch")) then v129:Destroy();end end local v114=58 + 12 ;for v130,v131 in pairs(v82[v112] or {} ) do local v132=0 -0 ;local v133;while true do if (2==v132) then v133.Font=Enum.Font.Gotham;v133.TextSize=65 -47 ;v133.Parent=v8;v132=870 -(550 + 317) ;end if (v132==0) then v133=Instance.new("TextButton");v133.Text=v130;v133.Size=UDim2.new(0 -0 ,534 -154 ,0 -0 ,315 -(134 + 151) );v132=1666 -(970 + 695) ;end if (v132==1) then v133.Position=UDim2.new(0,19 -9 ,0,v114);v133.BackgroundColor3=Color3.fromRGB(2040 -(582 + 1408) ,50,173 -123 );v133.TextColor3=Color3.fromRGB(255,255,320 -65 );v132=7 -5 ;end if (v132==3) then v133.Name="ScriptButton";v13:Clone().Parent=v133;v133.MouseButton1Click:Connect(function() local v183=1824 -(1195 + 629) ;while true do if (0==v183) then v9.Text="Executando "   .. v130   .. "..." ;loadstring(v131)();break;end end end);v132=5 -1 ;end if ((245 -(187 + 54))==v132) then v114=v114 + (820 -(162 + 618)) ;break;end end end v8.CanvasSize=UDim2.new(0 + 0 ,0,0,v114 + 14 + 6 );end local function v86() v7.CanvasSize=UDim2.new(0 -0 ,0,0 -0 ,600);for v134,v135 in ipairs(v7:GetChildren()) do if v135:IsA("TextButton") then v135:Destroy();end end local v116=0 + 0 ;for v136,v137 in pairs(v82) do local v138=1636 -(1373 + 263) ;local v139;while true do if (v138==(1001 -(451 + 549))) then v139.Position=UDim2.new(0,5,0 + 0 ,v116);v139.BackgroundColor3=Color3.fromRGB(77 -27 ,84 -34 ,1434 -(746 + 638) );v139.TextColor3=Color3.fromRGB(255,96 + 159 ,387 -132 );v138=2;end if (v138==2) then v139.Font=Enum.Font.Gotham;v139.TextSize=16;v139.Parent=v7;v138=344 -(218 + 123) ;end if ((1584 -(1535 + 46))==v138) then v13:Clone().Parent=v139;v139.MouseButton1Click:Connect(function() v85(v136);end);v116=v116 + 40 ;break;end if (v138==0) then v139=Instance.new("TextButton");v139.Text=v136;v139.Size=UDim2.new(1, -10,0,30 + 0 );v138=1 + 0 ;end end end v7.CanvasSize=UDim2.new(560 -(306 + 254) ,0 + 0 ,0,v116 + 10 );end v6:GetPropertyChangedSignal("Text"):Connect(function() local v117=0 -0 ;local v118;while true do if (v117==(1467 -(899 + 568))) then v118=string.lower(v6.Text);for v177,v178 in ipairs(v7:GetChildren()) do if v178:IsA("TextButton") then local v186=0 + 0 ;local v187;while true do if (v186==(0 -0)) then v187=string.find(string.lower(v178.Text),v118);v178.Visible=v187~=nil ;break;end end end end break;end end end);v10:GetPropertyChangedSignal("Text"):Connect(function() local v119=0;local v120;local v121;while true do if (v119==0) then v120=string.lower(v10.Text);v121=673 -(268 + 335) ;v119=291 -(60 + 230) ;end if (v119==(573 -(426 + 146))) then for v179,v180 in ipairs(v8:GetChildren()) do if (v180:IsA("TextButton") and (v180.Name=="ScriptButton")) then local v188=0;local v189;while true do if (v188==(1 + 0)) then if v180.Visible then local v193=0;while true do if (v193==(1456 -(282 + 1174))) then v180.Position=UDim2.new(0,821 -(569 + 242) ,0 -0 ,v121);v121=v121 + 40 ;break;end end end break;end if (v188==0) then v189=string.find(string.lower(v180.Text),v120);v180.Visible=v189~=nil ;v188=1;end end end end v8.CanvasSize=UDim2.new(0,0 + 0 ,0,v121 + (1044 -(706 + 318)) );break;end end end);v11.MouseButton1Click:Connect(function() v3:Destroy();end);v12.MouseButton1Click:Connect(function() v1:Teleport(game.PlaceId,game.Players.LocalPlayer);end);v86();local v2=game:GetService("TweenService");local v4=script.Parent;local v35=v4.MinimizeButton;local v8=v4.ContentArea;local v7=v4.CategoryList;local v6=v4.GameSearch;local v10=v4.ScriptSearch;local v9=v4.InfoBox;local v87=v4.CopyDiscordButton;local v5=v4.Title;local v36=TweenInfo.new(1251.25 -(721 + 530) ,Enum.EasingStyle.Quad);local v37=false;v35.MouseButton1Click:Connect(function() local v122=0;local v123;while true do if (v122==1) then v7.Visible= not v37;v6.Visible= not v37;v10.Visible= not v37;v9.Visible= not v37;v122=1273 -(945 + 326) ;end if (v122==(0 -0)) then v37= not v37;v123=(v37 and UDim2.new(0 + 0 ,900 -(271 + 429) ,0,30)) or UDim2.new(0 + 0 ,600,1500 -(1408 + 92) ,350) ;v2:Create(v4,v36,{Size=v123}):Play();v8.Visible= not v37;v122=1;end if (2==v122) then v5.Text=(v37 and "🌟") or "🌟 Glory Portal" ;v35.Text=(v37 and "➕") or "➖" ;if v37 then v87.Position=UDim2.new(0,1096 -(461 + 625) ,1289 -(993 + 295) , -40);else v87.Position=UDim2.new(0 + 0 ,1181 -(418 + 753) ,1 + 0 , -(9 + 71));end break;end end end);local v88="https://discord.gg/TEsUuKfK6P";local v87=v34("💬 Discord",UDim2.new(0 + 0 ,160,0 + 0 ,559 -(406 + 123) ),UDim2.new(1769 -(1749 + 20) ,10,1 + 0 , -40),Color3.fromRGB(1362 -(1249 + 73) ,15 + 25 ,1185 -(466 + 679) ),Color3.fromRGB(408 -238 ,170,729 -474 ),v4);v87.MouseButton1Click:Connect(function() setclipboard(v88);v9.Text="Link do Discord copiado!";task.delay(1902 -(106 + 1794) ,function() v9.Text="+ Glory Portal — join discord.gg/TEsUuKfK6P";end);end);local v2=game:GetService("TweenService");local v89=v2:Create(v87,TweenInfo.new(0.2),{BackgroundColor3=Color3.fromRGB(32 + 68 ,26 + 74 ,752 -497 )});local v90=v2:Create(v87,TweenInfo.new(0.2 -0 ),{BackgroundColor3=Color3.fromRGB(154 -(4 + 110) ,624 -(57 + 527) ,1467 -(41 + 1386) )});v87.MouseEnter:Connect(function() v89:Play();end);v87.MouseLeave:Connect(function() v90:Play();end);
