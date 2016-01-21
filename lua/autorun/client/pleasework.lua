surface.CreateFont("Cancer", {

	font = "Vertica",
	antialias = true,
	blursize = 0,
	size = 32

})

function DrawName(ply)

	for k,v in pairs(player.GetAll()) do
		if(!v:Alive()) then end
		if(v:Nick() == "Yata") then
	
				local offset 	= Vector(0, 0, 85);
				local ang 		= LocalPlayer():EyeAngles();
				local pos 		= v:GetPos() + offset + ang:Up();
	
				ang:RotateAroundAxis(ang:Forward(), 90);
				ang:RotateAroundAxis(ang:Right(), 90);
	
			cam.Start3D2D(pos, Angle(0, ang.y, 90), 0.5)
		
				draw.DrawText("Owner", "Cancer", 2, 2, Color(52, 152, 219,255), TEXT_ALIGN_CENTER)
	
			cam.End3D2D()
			
		end
	end
end

hook.Add("PostPlayerDraw", "DrawName", DrawName);