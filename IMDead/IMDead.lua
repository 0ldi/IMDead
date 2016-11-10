local x;

IMDead = {};

function IMDead.OnLoad()
	this:RegisterEvent("PLAYER_DEAD");
	this:RegisterEvent("PLAYER_LEVEL_UP");
end

function IMDead.OnEvent()
	if (event=="PLAYER_DEAD") then
		if (UnitIsDead("player")) then
			x = math.random(5);
			if ( x <= 1 ) then
				PlaySoundFile("IMDead.wav");
			elseif ( x <= 2 ) then
				PlaySoundFile("IMDead2.wav");
			elseif ( x <= 3 ) then
				PlaySoundFile("IMDead3.wav");
			elseif ( x <= 4 ) then
				PlaySoundFile("IMDead4.wav");
			else
				PlaySoundFile("IMDead5.wav");
			end
		end
	end
	if(event=="PLAYER_LEVEL_UP") then
		PlaySoundFile("Live2Win.wav");
	end

end