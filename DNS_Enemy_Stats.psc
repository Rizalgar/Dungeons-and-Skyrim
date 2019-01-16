Scriptname DNS_Enemy_Stats extends Actor  

GlobalVariable Property DNS_GV_eArmorClass_Fox Auto

Int Property Strength Auto
Int Property Dexterity Auto
Int Property Constitution Auto
Int Property Intelligence Auto
Int Property Wisdom Auto
Int Property Charisma Auto
Int Property Experience Auto

GlobalVariable Property DNS_GV_Dice_D20 Auto

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	
	Int AC = DNS_GV_eArmorClass_Fox.GetValue() as Int
	Int D20 = DNS_GV_Dice_D20.GetValue() as Int

	If akAggressor == Game.GetPlayer()
	
		If D20 < AC
			
			;do nothing
			
		Else
		
			Weapon akSourceWeapon = akSource as Weapon
			
			ExperienceGain()
		
		EndIf
		
	EndIf
	
EndEvent

Function ExperienceGain()

	If self.IsDead() == true
	
		dnsFrameworkLeveling.ExpGain("main", Experience)
		
	EndIf
	
EndFunction 