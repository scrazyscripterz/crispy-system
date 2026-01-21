-- LoveHub Protected Release (Single File)

-- ===== ENV GATE =====
if not game or not workspace or not getgenv then return end
if not fireclickdetector then return end
pcall(function()
    if not game:GetService("Players").LocalPlayer then error() end
end)

-- ===== ANTI DOUBLE EXEC =====
local g=getgenv()
if g.__LH_CORE then return end
g.__LH_CORE=true

-- ===== PLACE LOCK =====
if game.PlaceId~=12456158615 then return end

-- ===== RANDOM DELAY =====
task.wait(math.random(1,2))

-- ===== API INDIRECTION =====
local S={"In","sta","nc","e","ne","w","Fr","am","e"}
local function C(t)return table.concat(t)end
local I=Instance
local N=I.new

-- ===== CONFIG (OBF SAFE) =====
local CFG={
H="LoveHub",
D="https://discord.gg/z4aF6fh63u",
B=Color3.fromRGB(14,18,30),
C=Color3.fromRGB(22,28,45),
A=Color3.fromRGB(88,140,255),
AD=Color3.fromRGB(60,100,200),
L=Color3.fromRGB(60,90,150),
DB=Color3.fromRGB(88,101,242),
TM=Color3.fromRGB(230,235,245),
TS=Color3.fromRGB(170,180,210),
V="rbxassetid://5608339667"
}

-- ===== SERVICES =====
local P=game:GetService("Players")
local T=game:GetService("TweenService")
local pl=P.LocalPlayer

-- ===== HOVER FX =====
local function H(b,n,h)
b.MouseEnter:Connect(function()
T:Create(b,TweenInfo.new(.15),{BackgroundColor3=h}):Play()
end)
b.MouseLeave:Connect(function()
T:Create(b,TweenInfo.new(.15),{BackgroundColor3=n}):Play()
end)
end

-- ===== LOADING SCREEN =====
do
local g=N("ScreenGui",pl.PlayerGui)
g.ResetOnSpawn=false
local f=N("Frame",g)
f.Size=UDim2.new(0,420,0,260)
f.Position=UDim2.new(.5,-210,.5,-130)
f.BackgroundColor3=CFG.B
f.BackgroundTransparency=.05
N("UICorner",f).CornerRadius=UDim.new(0,16)

local v=N("VideoFrame",f)
v.Size=UDim2.new(1,-20,0,140)
v.Position=UDim2.new(0,10,0,10)
v.Video=CFG.V
v.Looped=true
v.Volume=0
v.BackgroundTransparency=1
v:Play()

local t=N("TextLabel",f)
t.Size=UDim2.new(1,-20,0,80)
t.Position=UDim2.new(0,10,0,160)
t.BackgroundTransparency=1
t.TextWrapped=true
t.Text="This script is still in beta and in the heavy development stage.\nJoin the discord for suggestions and problems or bugs."
t.Font=Enum.Font.Gotham
t.TextSize=13
t.TextColor3=CFG.TS

task.wait(4)
g:Destroy()
end

-- ===== OPENINGS DETECT =====
local F=workspace.Facility.Core.Buildings.CR.Openings
local O={}
for _,o in ipairs(F:GetChildren()) do
local d=o:FindFirstChild("Handle") and o.Handle:FindFirstChild("Click") and o.Handle.Click:FindFirstChild("ClickDetector")
if d then table.insert(O,{m=o,d=d}) end
end
table.sort(O,function(a,b)
return a.m:GetPivot().Position.X>b.m:GetPivot().Position.X
end)

-- ===== MAIN GUI =====
local G=N("ScreenGui",pl.PlayerGui)
G.ResetOnSpawn=false

local Pn=N("Frame",G)
Pn.Size=UDim2.new(0,420,0,400)
Pn.Position=UDim2.new(.5,-210,.55,-150)
Pn.BackgroundColor3=CFG.B
Pn.BackgroundTransparency=1
Pn.Active=true
Pn.Draggable=true
N("UICorner",Pn).CornerRadius=UDim.new(0,18)

-- HEADER
local Hd=N("Frame",Pn)
Hd.Size=UDim2.new(1,-20,0,50)
Hd.Position=UDim2.new(0,10,0,10)
Hd.BackgroundTransparency=1

local Tl=N("TextLabel",Hd)
Tl.Size=UDim2.new(1,-120,1,0)
Tl.BackgroundTransparency=1
Tl.Text=CFG.H
Tl.Font=Enum.Font.GothamBold
Tl.TextSize=22
Tl.TextXAlignment=Enum.TextXAlignment.Left
Tl.TextColor3=CFG.TM
Tl.TextTransparency=1

local Mn=N("TextButton",Hd)
Mn.Size=UDim2.new(0,28,0,28)
Mn.Position=UDim2.new(1,-60,.5,-14)
Mn.Text="–"
Mn.Font=Enum.Font.GothamBold
Mn.TextSize=20
Mn.TextColor3=CFG.TM
Mn.BackgroundColor3=CFG.C
Mn.BackgroundTransparency=.15
N("UICorner",Mn).CornerRadius=UDim.new(0,8)
H(Mn,CFG.C,CFG.AD)

local Cl=N("TextButton",Hd)
Cl.Size=UDim2.new(0,28,0,28)
Cl.Position=UDim2.new(1,-28,.5,-14)
Cl.Text="X"
Cl.Font=Enum.Font.GothamBold
Cl.TextSize=16
Cl.TextColor3=CFG.TM
Cl.BackgroundColor3=CFG.C
Cl.BackgroundTransparency=.15
N("UICorner",Cl).CornerRadius=UDim.new(1,0)
H(Cl,CFG.C,CFG.AD)

T:Create(Cl,TweenInfo.new(2,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,-1),{Rotation=360}):Play()
Cl.MouseButton1Click:Connect(function()G:Destroy()end)

-- LINE
local Ln=N("Frame",Pn)
Ln.Size=UDim2.new(1,-20,0,1)
Ln.Position=UDim2.new(0,10,0,68)
Ln.BackgroundColor3=CFG.L
Ln.BackgroundTransparency=.4

-- CONTENT
local Ct=N("Frame",Pn)
Ct.Size=UDim2.new(1,-20,1,-130)
Ct.Position=UDim2.new(0,10,0,80)
Ct.BackgroundTransparency=1
local L=N("UIListLayout",Ct)
L.Padding=UDim.new(0,10)

for i,v in ipairs(O) do
local r=N("Frame",Ct)
r.Size=UDim2.new(1,0,0,36)
r.BackgroundTransparency=1

local l=N("TextLabel",r)
l.Size=UDim2.new(.6,0,1,0)
l.BackgroundTransparency=1
l.Text="Opening "..i
l.Font=Enum.Font.Gotham
l.TextSize=14
l.TextColor3=CFG.TM
l.TextXAlignment=Enum.TextXAlignment.Left
l.TextTransparency=1

local b=N("TextButton",r)
b.Size=UDim2.new(.35,0,1,0)
b.Position=UDim2.new(.65,0,0,0)
b.Text="BUTTON"
b.Font=Enum.Font.GothamBold
b.TextSize=13
b.TextColor3=Color3.fromRGB(235,240,255)
b.BackgroundColor3=CFG.A
N("UICorner",b).CornerRadius=UDim.new(0,10)
H(b,CFG.A,CFG.AD)

b.MouseButton1Click:Connect(function()
fireclickdetector(v.d,0)
end)
end

-- FOOTER
local Ft=N("Frame",Pn)
Ft.Size=UDim2.new(1,-20,0,44)
Ft.Position=UDim2.new(0,10,1,-54)
Ft.BackgroundTransparency=1

local Dc=N("TextButton",Ft)
Dc.Size=UDim2.new(1,0,1,0)
Dc.Text="Join Discord"
Dc.Font=Enum.Font.GothamBold
Dc.TextSize=14
Dc.TextColor3=Color3.fromRGB(235,240,255)
Dc.BackgroundColor3=CFG.DB
N("UICorner",Dc).CornerRadius=UDim.new(0,12)
H(Dc,CFG.DB,CFG.A)

Dc.MouseButton1Click:Connect(function()
if setclipboard then setclipboard(CFG.D) end
end)

task.wait()
T:Create(Pn,TweenInfo.new(.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
Position=UDim2.new(.5,-210,.5,-190),
BackgroundTransparency=.05
}):Play()

for _,u in ipairs(Pn:GetDescendants()) do
if u:IsA("TextLabel") or u:IsA("TextButton") then
T:Create(u,TweenInfo.new(.35),{TextTransparency=0}):Play()
end
end

local m=false
local fs=Pn.Size
Mn.MouseButton1Click:Connect(function()
m=not m
Mn.Text=m and "+" or "–"
Ct.Visible=not m
Ft.Visible=not m
T:Create(Pn,TweenInfo.new(.25),{
Size=m and UDim2.new(fs.X.Scale,fs.X.Offset,0,72) or fs
}):Play()
end)
