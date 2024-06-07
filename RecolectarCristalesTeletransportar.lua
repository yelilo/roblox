local StartPoint = script.Parent.Inicio
local EndPoint = script.Parent.Fin
local diamantesRecolectados = 0

game.Workspace.Teletransport.Inicio.Transparency = 1

function onTouchCristal_1(who)
	game.Workspace.Green_Crystal_1:Destroy()
	diamantesRecolectados = diamantesRecolectados + 1
	if diamantesRecolectados == 3 then
		game.Workspace.Teletransport.Inicio.Transparency = 0
	end
end

game.Workspace.Green_Crystal_1.Touched:Connect(onTouchCristal_1)

function onTouchCristal_2(who)
	game.Workspace.Green_Crystal_2:Destroy()

	diamantesRecolectados = diamantesRecolectados + 1
	if diamantesRecolectados == 3 then
		game.Workspace.Teletransport.Inicio.Transparency = 0
	end
end

game.Workspace.Green_Crystal_2.Touched:Connect(onTouchCristal_2)

function onTouchCristal_3(who)
	game.Workspace.Green_Crystal_3:Destroy()

	diamantesRecolectados = diamantesRecolectados + 1
	if diamantesRecolectados == 3 then
		game.Workspace.Teletransport.Inicio.Transparency = 0
	end
end

game.Workspace.Green_Crystal_3.Touched:Connect(onTouchCristal_3)

function TouchedFunc(touched)
	if touched.Parent:FindFirstChild("Humanoid") then
		local human = touched.Parent.HumanoidRootPart
		human.Position = EndPoint.Position +Vector3.new(0,10,0)
	end
end

StartPoint.Touched:Connect(TouchedFunc)