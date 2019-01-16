Scriptname dnsFrameworkLeveling extends Quest  
{Handles leveling}

dnsFrameworkData Function GetData() Global
	Return (Game.GetFormFromFile(0x005EA8, "Dungeons and Skyrim.esp") as Quest) as dnsFrameworkData
EndFunction

GlobalVariable Function GetMainClass() Global
	Return GetData().DNS_GV_cExperienceMain
EndFunction

GlobalVariable Function GetSubClass() Global
	Return GetData().DNS_GV_cExperienceSub
EndFunction 

Function ExpGain(string stringClass, float xp) Global

	If stringClass == "main"
		(GetMainClass()).SetValue(((GetMainClass()).GetValue()) + XP)
	ElseIf stringClass == "sub"
		(GetSubClass()).SetValue(((GetSubClass()).GetValue()) + XP)
	EndIf
	LevelCheck(stringClass)
EndFunction 

Function LevelCheck(String stringClass) Global
	If stringClass == "main"
		LevelCheckMain()
	ElseIf stringClass == "sub"
		LevelCheckSub()
	EndIf
EndFunction

GlobalVariable Function GetClassSelection(string stringClass) Global
	
	If stringClass == "main"
		Return Game.GetFormFromFile(0x00592B, "Dungeons and Skyrim.esp") as GlobalVariable
	ElseIf stringClass == "sub"
		Return Game.GetFormFromFile(0x00592C, "Dungeons and Skyrim.esp") as GlobalVariable
	EndIf
	
EndFunction

Function LevelCheckMain() Global
EndFunction

Function LevelCheckSub() Global
EndFunction

