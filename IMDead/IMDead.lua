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
				PlaySoundFile("Interface\\AddOns\\IMDead\\Data\\IMDead1.ogg");
			elseif ( x <= 2 ) then
				PlaySoundFile("Interface\\AddOns\\IMDead\\Data\\IMDead2.ogg");
			elseif ( x <= 3 ) then
				PlaySoundFile("Interface\\AddOns\\IMDead\\Data\\IMDead3.ogg");
			elseif ( x <= 4 ) then
				PlaySoundFile("Interface\\AddOns\\IMDead\\Data\\IMDead4.ogg");
			else
				PlaySoundFile("Interface\\AddOns\\IMDead\\Data\\IMDead5.ogg");
			end
		end
	end
	if(event=="PLAYER_LEVEL_UP") then
		PlaySoundFile("Live2Win.ogg");
	end

end