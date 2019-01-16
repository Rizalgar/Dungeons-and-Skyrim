Scriptname dnsFrameworkCombat extends Quest  

dnsFrameworkData Function GetData() Global
	Return (Game.GetFormFromFile(0x005EA8, "Dungeons and Skyrim.esp") as Quest) as dnsFrameworkData
EndFunction

GlobalVariable Function GeteAC() Global
	Return GetData().DNS_GV_eAC_Fox 
EndFunction
