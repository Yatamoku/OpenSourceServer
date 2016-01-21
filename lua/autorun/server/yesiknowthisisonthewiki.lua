hook.Add("PlayerAuthed", "PlayerAuthed", function ()
	for k,v in pairs(player.GetAll()) do
		PrintMessage(HUD_PRINTTALK, v:Name().." has successfully connected. ("..v:SteamID()..").")
	end
end)
