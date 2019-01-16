Scriptname DNS_MCM Extends SKI_ConfigBase
{SkyUI Display and Settings}

;;Stat Globals
GlobalVariable Property DNS_GV_aStrength Auto
GlobalVariable Property DNS_GV_aStrengthBonus Auto

GlobalVariable Property DNS_GV_aDexterity Auto
GlobalVariable Property DNS_GV_aDexterityBonus Auto

GlobalVariable Property DNS_GV_aConstitution Auto
GlobalVariable Property DNS_GV_aConstitutionBonus Auto

GlobalVariable Property DNS_GV_aIntelligence Auto
GlobalVariable Property DNS_GV_aIntelligenceBonus Auto

GlobalVariable Property DNS_GV_aWisdom Auto
GlobalVariable Property DNS_GV_aWisdomBonus Auto

GlobalVariable Property DNS_GV_aCharisma Auto
GlobalVariable Property DNS_GV_aCharismaBonus Auto

;;Skill Globals
GlobalVariable Property DNS_GV_sAcrobatics Auto
GlobalVariable Property DNS_GV_sAnimalHandling Auto
GlobalVariable Property DNS_GV_sArcana Auto
GlobalVariable Property DNS_GV_sAthletics Auto
GlobalVariable Property DNS_GV_sDeception Auto
GlobalVariable Property DNS_GV_sHistory Auto
GlobalVariable Property DNS_GV_sInsight Auto
GlobalVariable Property DNS_GV_sIntimidation Auto
GlobalVariable Property DNS_GV_sInvestigation Auto
GlobalVariable Property DNS_GV_sMedicine Auto
GlobalVariable Property DNS_GV_sNature Auto
GlobalVariable Property DNS_GV_sPerception Auto
GlobalVariable Property DNS_GV_sPerformance Auto
GlobalVariable Property DNS_GV_sPersuasion Auto
GlobalVariable Property DNS_GV_sReligion Auto
GlobalVariable Property DNS_GV_sSleightofHand Auto
GlobalVariable Property DNS_GV_sStealth Auto
GlobalVariable Property DNS_GV_sSurvival Auto

;;Character Info
GlobalVariable Property DNS_GV_cLevel Auto
GlobalVariable Property DNS_GV_cArmorClass Auto
GlobalVariable Property DNS_GV_cHitpoints Auto
GlobalVariable Property DNS_GV_cExperience Auto
GlobalVariable Property DNS_GV_cSubclassLevel Auto

GlobalVariable Property DNS_GV_cClass Auto
GlobalVariable Property DNS_GV_cSubclass Auto
GlobalVariable Property DNS_GV_cExperienceMain Auto
GlobalVariable Property DNS_GV_cExperienceSub Auto

;;Spell slots
GlobalVariable Property DNS_GV_1stLevelSlot Auto
GlobalVariable Property DNS_GV_2ndLevelSlot Auto
GlobalVariable Property DNS_GV_3rdLevelSlot Auto
GlobalVariable Property DNS_GV_4thLevelSlot Auto
GlobalVariable Property DNS_GV_5thLevelSlot Auto

;;Initial Dice Rolls
GlobalVariable Property DNS_StatRollPreset Auto
GlobalVariable Property DNS_StatRoll_Charisma Auto
GlobalVariable Property DNS_StatRoll_Constitution Auto
GlobalVariable Property DNS_StatRoll_Dexterity Auto
GlobalVariable Property DNS_StatRoll_Intelligence Auto
GlobalVariable Property DNS_StatRoll_Strength Auto
GlobalVariable Property DNS_StatRoll_Wisdom Auto

;;Messages
Message Property DNS_Message_cClassSelect Auto
Message Property DNS_Message_cSubclassFighter Auto
Message Property DNS_Message_cSubclassRanger Auto
Message Property DNS_Message_cSubclassWizard Auto

Message Property DNS_Message_DiceRollSelect Auto

Message Property DNS_Message_ExpSelect Auto

;;General Items
MiscObject Property Gold001 Auto
Potion Property DNS_Food_Ration Auto
Potion Property DNS_Potion_MinorHealing Auto

;;Figher Items
Armor Property DNS_Armor_IronBoots Auto
Armor Property DNS_Armor_IronCuirass Auto
Armor Property DNS_Armor_IronGauntlets Auto
Armor Property DNS_Armor_IronShield Auto
Weapon Property DNS_Weapon_IronSword Auto

;;Text and Slider
Int Strength
Int Dexterity
Int Constitution
Int Intelligence
Int Wisdom
Int Charisma

Int Acrobatics
Int AnimalHandling
Int Arcana
Int Athletics
Int Deception
Int History
Int Insight
Int Intimidation
Int Investigation
Int Medicine
Int Nature
Int Perception
Int Performance
Int Persuasion
Int Religion
Int SleightofHand
Int Stealth
Int Survival

Int SpellSlot1
Int SpellSlot2
Int SpellSlot3
Int SpellSlot4
Int SpellSlot5

Int Level
Int SubLevel
Int Experience
Int ArmorClass
Int Hitpoints

String Name
String Class1
String Subclass
String Class2
String stringSubclass
String aVal

String stringExperience

Event OnPageReset(string page)

	If (page == "")
		SetCursorFillMode(LEFT_TO_RIGHT)
		SetCursorPosition(0)
		RegisterForKey(59)
		
		AddHeaderOption("Character Sheet")
		
		AddHeaderOption("Stats and Skills")
		
		Name = AddTextOption("My name: " + Game.GetPlayer().GetBaseObject().GetName() + "", aVal)
		
		Strength = AddTextOption("Strength: " + DNS_GV_aStrength.GetValueInt() + "(" + DNS_GV_aStrengthBonus.GetValueInt() + ")", aVal)
		
		Class1 = AddTextOption("Class: " + Class2, aVal)
		
		Dexterity = AddTextOption("Dexterity: " + DNS_GV_aDexterity.GetValueInt() + "(" + DNS_GV_aDexterityBonus.GetValueInt() + ")", aVal)
		
		Subclass = AddTextOption("Subclass: " + stringSubclass, aVal)
		
		Constitution = AddTextOption("Constitution: " + DNS_GV_aConstitution.GetValueInt() + "(" + DNS_GV_aConstitutionBonus.GetValueInt() + ")", aVal)
		
		Level = AddTextOption("Level: " + DNS_GV_cLevel.GetValueInt(), aVal)
		
		Intelligence = AddTextOption("Intelligence: " + DNS_GV_aIntelligence.GetValueInt() + "(" + DNS_GV_aIntelligenceBonus.GetValueInt() + ")", aVal)
		
		Sublevel = AddTextOption("Subclass Level: " + DNS_GV_cSubclassLevel.GetValueInt(), aVal)
		
		Wisdom = AddTextOption("Wisdom: " + DNS_GV_aWisdom.GetValueInt() + "(" + DNS_GV_aWisdomBonus.GetValueInt() + ")", aVal)
		
		Hitpoints = AddTextOption("Hitpoints: " + DNS_GV_cHitpoints.GetValueInt(), aVal)
		
		Charisma = AddTextOption("Charisma: " + DNS_GV_aCharisma.GetValueInt() + "(" + DNS_GV_aCharismaBonus.GetValueInt() + ")", aVal)
		
		ArmorClass = AddTextOption("Armor Class: " + DNS_GV_cArmorClass.GetValueInt(), aVal)
		
		AddEmptyOption()
		
		AddHeaderOption("")
		
		AddHeaderOption("")
		
		Acrobatics = AddTextOption("Acrobatics: " + (DNS_GV_sAcrobatics.GetValueInt() + DNS_GV_aDexterityBonus.GetValueInt()), aVal)		
		
		AnimalHandling = AddTextOption("Animal Handling: " + (DNS_GV_sAnimalHandling.GetValueInt() + DNS_GV_aWisdomBonus.GetValueInt()), aVal)
		
		Arcana = AddTextOption("Arcana: " + (DNS_GV_sArcana.GetValueInt() + DNS_GV_aIntelligenceBonus.GetValueInt()), aVal)
		
		Athletics = AddTextOption("Athletics: " + (DNS_GV_sAthletics.GetValueInt() + DNS_GV_aStrengthBonus.GetValueInt()), aVal)
		
		Deception = AddTextOption("Deception: " + (DNS_GV_sDeception.GetValueInt() + DNS_GV_aCharismaBonus.GetValueInt()), aVal)
		
		History = AddTextOption("History: " + (DNS_GV_sHistory.GetValueInt() + DNS_GV_aIntelligenceBonus.GetValueInt()), aVal)
		
		Insight = AddTextOption("InsightL " + (DNS_GV_sInsight.GetValueInt() + DNS_GV_aWisdomBonus.GetValueInt()), aVal)
		
		Intimidation = AddTextOption("Intimidation: " + (DNS_GV_sIntimidation.GetValueInt() + DNS_GV_aCharismaBonus.GetValueInt()), aVal)
		
		Investigation = AddTextOption("Investigation: " + (DNS_GV_sInvestigation.GetValueInt() + DNS_GV_aIntelligenceBonus.GetValueInt()), aVal)
		
		Medicine = AddTextOption("Medicine: " + (DNS_GV_sMedicine.GetValueInt() + DNS_GV_aWisdomBonus.GetValueInt()), aVal)
		
		Nature = AddTextOption("Nature: " + (DNS_GV_sNature.GetValueInt() + DNS_GV_aIntelligenceBonus.GetValueInt()), aVal)
		
		Perception = AddTextOption("Perception: " + (DNS_GV_sPerception.GetValueInt() + DNS_GV_aWisdomBonus.GetValueInt()), aVal)
		
		Performance = AddTextOption("Performance: " + (DNS_GV_sPerformance.GetValueInt() + DNS_GV_aCharismaBonus.GetValueInt()), aVal)
		
		Persuasion = AddTextOption("Persuasion: " + (DNS_GV_sPersuasion.GetValueInt() + DNS_GV_aCharismaBonus.GetValueInt()), aVal)
		
		Religion = AddTextOption("Religion: " + (DNS_GV_sReligion.GetValueInt() + DNS_GV_aIntelligenceBonus.GetValueInt()), aVal)
		
		SleightofHand = AddTextOption("Sleight of Hand: " + (DNS_GV_sSleightofHand.GetValueInt() + DNS_GV_aDexterityBonus.GetValueInt()), aVal)
		
		Stealth = AddTextOption("Stealth: " + (DNS_GV_sStealth.GetValueInt() + DNS_GV_aDexterityBonus.GetValueInt()), aVal)
		
		Survival = AddTextOption("Survival: " + (DNS_GV_sSurvival.GetValueInt() + DNS_GV_aWisdomBonus.GetValueInt()), aVal)
				
	ElseIf (page == "Initialize")
	
		Int stringClass = DNS_Message_cClassSelect.Show()
			If stringClass == 0 ;fighter
				DNS_GV_cClass.SetValue(1)
				Utility.Wait(5.0)
				Game.GetPlayer().RemoveAllItems()
				Utility.Wait(1.0)
				Game.GetPlayer().Additem(Gold001, 25)
				Game.GetPlayer().Additem(DNS_Food_Ration, 5)
				Game.GetPlayer().Additem(DNS_Potion_MinorHealing, 5)
				Game.GetPlayer().Additem(DNS_Armor_IronBoots, 1)
				Game.GetPlayer().Additem(DNS_Armor_IronCuirass, 1)
				Game.GetPlayer().Additem(DNS_Armor_IronGauntlets, 1)
				Game.GetPlayer().Additem(DNS_Armor_IronShield, 1)
				Game.GetPlayer().Additem(DNS_Weapon_IronSword, 1)
				Utility.Wait(1.0)
				Game.GetPlayer().EquipItem(DNS_Armor_IronBoots)
				Game.GetPlayer().EquipItem(DNS_Armor_IronCuirass)
				Game.GetPlayer().EquipItem(DNS_Armor_IronGauntlets)
				Game.GetPlayer().EquipItem(DNS_Armor_IronShield)
				Game.GetPlayer().EquipItem(DNS_Weapon_IronSword)
			ElseIf stringClass == 1 ;;ranger
				DNS_GV_cClass.SetValue(2)

			ElseIf stringClass == 2 ;;wizard
				DNS_GV_cClass.SetValue(3)

			EndIf
	ElseIf (page == "Stat Roll")
	
		Int stringStat = DNS_Message_DiceRollSelect.Show()
		If stringStat == 0 ; select own
			Int S1 = Utility.RandomInt(1,6)
			Int S2 = Utility.RandomInt(1,6)
			Int S3 = Utility.RandomInt(1,6)
			Int S4 = Utility.RandomInt(1,6)
			Int S5 = (S1 + S2 + S3 + S4)
			DNS_GV_aStrength.SetValue(S5)
			Debug.Notification("You rolled a " + S1 + "," + S2 + "," + S3 + "," + S4 + " for a total of " + S5 + " in Strength.")
				
			Utility.Wait(1.0)
				
			Int D1 = Utility.RandomInt(1,6)
			Int D2 = Utility.RandomInt(1,6)
			Int D3 = Utility.RandomInt(1,6)
			Int D4 = Utility.RandomInt(1,6)
			Int D5 = (D1 + D2 + D3 + D4)
			DNS_GV_aDexterity.SetValue(D5)
			Debug.Notification("You rolled a " + D1 + "," + D2 + "," + D3 + "," + D4 + " for a total of " + D5 + " in Dexterity.")
				
			Utility.Wait(1.0)
				
			Int C1 = Utility.RandomInt(1,6)
			Int C2 = Utility.RandomInt(1,6)
			Int C3 = Utility.RandomInt(1,6)
			Int C4 = Utility.RandomInt(1,6)
			Int C5 = (C1 + C2 + C3 + C4)
			DNS_GV_aConstitution.SetValue(C5)
			Debug.Notification("You rolled a " + C1 + "," + C2 + "," + C3 + "," + C4 + " for a total of " + C5 + " in Constitution.")
				
			Utility.Wait(1.0)
			
			Int I1 = Utility.RandomInt(1,6)
			Int I2 = Utility.RandomInt(1,6)
			Int I3 = Utility.RandomInt(1,6)
			Int I4 = Utility.RandomInt(1,6)
			Int I5 = (I1 + I2 + I3 + I4)
			DNS_GV_aIntelligence.SetValue(I5)
			Debug.Notification("You rolled a " + I1 + "," + I2 + "," + I3 + "," + I4 + " for a total of " + I5 + " in Intelligence.")
			
			Utility.Wait(1.0)
			
			Int W1 = Utility.RandomInt(1,6)
			Int W2 = Utility.RandomInt(1,6)
			Int W3 = Utility.RandomInt(1,6)
			Int W4 = Utility.RandomInt(1,6)
			Int W5 = (W1 + W2 + W3 + W4)
			DNS_GV_aWisdom.SetValue(W5)
			Debug.Notification("You rolled a " + W1 + "," + W2 + "," + W3 + "," + W4 + " for a total of " + W5 + " in Wisdom.")
			
			Utility.Wait(1.0)
			
			Int Ch1 = Utility.RandomInt(1,6)
			Int Ch2 = Utility.RandomInt(1,6)
			Int Ch3 = Utility.RandomInt(1,6)
			Int Ch4 = Utility.RandomInt(1,6)
			Int Ch5 = (Ch1 + Ch2 + Ch3 + Ch4)
			DNS_GV_aCharisma.SetValue(Ch5)
			Debug.Notification("You rolled a " + Ch1 + "," + Ch2 + "," + Ch3 + "," + Ch4 + " for a total of " + Ch5 + " in Charisma.")
			
			Utility.Wait(5.0)
			
			Debug.MessageBox("You rolled for a total of " + S5 + " Strength, " + D5 + " Dexterity, " + C5 + " Constitution, " + I5 + "Intelligence, " + W5 + " Wisdom and " + Ch5 + " Charisma.")
			
			If DNS_GV_aCharisma.GetValue() < 10
				DNS_GV_aCharismaBonus.SetValue(DNS_GV_aCharismaBonus.GetValue() - 1)
			ElseIf DNS_GV_aCharisma.GetValue()  >= 10 && DNS_GV_aCharisma.GetValue() < 12
				DNS_GV_aCharismaBonus.SetValue(DNS_GV_aCharismaBonus.GetValue() + 1)
			ElseIf DNS_GV_aCharisma.GetValue() >= 12 && DNS_GV_aCharisma.GetValue() < 14
				DNS_GV_aCharismaBonus.SetValue(DNS_GV_aCharismaBonus.GetValue() + 2)
			ElseIf DNS_GV_aCharisma.GetValue() >= 14 && DNS_GV_aCharisma.GetValue() < 16
				DNS_GV_aCharismaBonus.SetValue(DNS_GV_aCharismaBonus.GetValue() + 3)
			ElseIf DNS_GV_aCharisma.GetValue() >= 16 && DNS_GV_aCharisma.GetValue() < 18
				DNS_GV_aCharismaBonus.SetValue(DNS_GV_aCharismaBonus.GetValue() + 4)
			ElseIf DNS_GV_aCharisma.GetValue() >= 18
				DNS_GV_aCharismaBonus.SetValue(DNS_GV_aCharismaBonus.GetValue() + 5)
			EndIf
				
			If DNS_GV_aStrength.GetValue() < 10
				DNS_GV_aStrengthBonus.SetValue(DNS_GV_aStrengthBonus.GetValue() - 1)
				ElseIf DNS_GV_aStrength.GetValue()  >= 10 && DNS_GV_aStrength.GetValue() < 12
					DNS_GV_aStrengthBonus.SetValue(DNS_GV_aStrengthBonus.GetValue() + 1)
				ElseIf DNS_GV_aStrength.GetValue() >= 12 && DNS_GV_aStrength.GetValue() < 14
					DNS_GV_aStrengthBonus.SetValue(DNS_GV_aStrengthBonus.GetValue() + 2)
				ElseIf DNS_GV_aStrength.GetValue() >= 14 && DNS_GV_aStrength.GetValue() < 16
					DNS_GV_aStrengthBonus.SetValue(DNS_GV_aStrengthBonus.GetValue() + 3)
				ElseIf DNS_GV_aStrength.GetValue() >= 16 && DNS_GV_aStrength.GetValue() < 18
					DNS_GV_aStrengthBonus.SetValue(DNS_GV_aStrengthBonus.GetValue() + 4)
				ElseIf DNS_GV_aStrength.GetValue() >= 18
					DNS_GV_aStrengthBonus.SetValue(DNS_GV_aStrengthBonus.GetValue() + 5)
			EndIf
				
			If DNS_GV_aDexterity.GetValue() < 10
				DNS_GV_aDexterityBonus.SetValue(DNS_GV_aDexterityBonus.GetValue() - 1)
				ElseIf DNS_GV_aDexterity.GetValue()  >= 10 && DNS_GV_aDexterity.GetValue() < 12
					DNS_GV_aDexterityBonus.SetValue(DNS_GV_aDexterityBonus.GetValue() + 1)
				ElseIf DNS_GV_aDexterity.GetValue() >= 12 && DNS_GV_aDexterity.GetValue() < 14
					DNS_GV_aDexterityBonus.SetValue(DNS_GV_aDexterityBonus.GetValue() + 2)
				ElseIf DNS_GV_aDexterity.GetValue() >= 14 && DNS_GV_aDexterity.GetValue() < 16
					DNS_GV_aDexterityBonus.SetValue(DNS_GV_aDexterityBonus.GetValue() + 3)
				ElseIf DNS_GV_aDexterity.GetValue() >= 16 && DNS_GV_aDexterity.GetValue() < 18
					DNS_GV_aDexterityBonus.SetValue(DNS_GV_aDexterityBonus.GetValue() + 4)
				ElseIf DNS_GV_aDexterity.GetValue() >= 18
					DNS_GV_aDexterityBonus.SetValue(DNS_GV_aDexterityBonus.GetValue() + 5)
			EndIf
				
			If DNS_GV_aIntelligence.GetValue() < 10
				DNS_GV_aIntelligenceBonus.SetValue(DNS_GV_aIntelligenceBonus.GetValue() - 1)
				ElseIf DNS_GV_aIntelligence.GetValue()  >= 10 && DNS_GV_aIntelligence.GetValue() < 12
					DNS_GV_aIntelligenceBonus.SetValue(DNS_GV_aIntelligenceBonus.GetValue() + 1)
				ElseIf DNS_GV_aIntelligence.GetValue() >= 12 && DNS_GV_aIntelligence.GetValue() < 14
					DNS_GV_aIntelligenceBonus.SetValue(DNS_GV_aIntelligenceBonus.GetValue() + 2)
				ElseIf DNS_GV_aIntelligence.GetValue() >= 14 && DNS_GV_aIntelligence.GetValue() < 16
					DNS_GV_aIntelligenceBonus.SetValue(DNS_GV_aIntelligenceBonus.GetValue() + 3)
				ElseIf DNS_GV_aIntelligence.GetValue() >= 16 && DNS_GV_aIntelligence.GetValue() < 18
					DNS_GV_aIntelligenceBonus.SetValue(DNS_GV_aIntelligenceBonus.GetValue() + 4)
				ElseIf DNS_GV_aIntelligence.GetValue() >= 18
					DNS_GV_aIntelligenceBonus.SetValue(DNS_GV_aIntelligenceBonus.GetValue() + 5)
			EndIf
				
			If DNS_GV_aConstitution.GetValue() < 10
				DNS_GV_aConstitutionBonus.SetValue(DNS_GV_aConstitutionBonus.GetValue() - 1)
			ElseIf DNS_GV_aConstitution.GetValue()  >= 10 && DNS_GV_aConstitution.GetValue() < 12
				DNS_GV_aConstitutionBonus.SetValue(DNS_GV_aConstitutionBonus.GetValue() + 1)
			ElseIf DNS_GV_aConstitution.GetValue() >= 12 && DNS_GV_aConstitution.GetValue() < 14
				DNS_GV_aConstitutionBonus.SetValue(DNS_GV_aConstitutionBonus.GetValue() + 2)
			ElseIf DNS_GV_aConstitution.GetValue() >= 14 && DNS_GV_aConstitution.GetValue() < 16
				DNS_GV_aConstitutionBonus.SetValue(DNS_GV_aConstitutionBonus.GetValue() + 3)
			ElseIf DNS_GV_aConstitution.GetValue() >= 16 && DNS_GV_aConstitution.GetValue() < 18
				DNS_GV_aConstitutionBonus.SetValue(DNS_GV_aConstitutionBonus.GetValue() + 4)
			ElseIf DNS_GV_aConstitution.GetValue() >= 18
				DNS_GV_aConstitutionBonus.SetValue(DNS_GV_aConstitutionBonus.GetValue() + 5)
			EndIf
			
			If DNS_GV_aWisdom.GetValue() < 10
				DNS_GV_aWisdomBonus.SetValue(DNS_GV_aWisdomBonus.GetValue() - 1)
			ElseIf DNS_GV_aWisdom.GetValue()  >= 10 && DNS_GV_aWisdom.GetValue() < 12
				DNS_GV_aWisdomBonus.SetValue(DNS_GV_aWisdomBonus.GetValue() + 1)
			ElseIf DNS_GV_aWisdom.GetValue() >= 12 && DNS_GV_aWisdom.GetValue() < 14
				DNS_GV_aWisdomBonus.SetValue(DNS_GV_aWisdomBonus.GetValue() + 2)
			ElseIf DNS_GV_aWisdom.GetValue() >= 14 && DNS_GV_aWisdom.GetValue() < 16
				DNS_GV_aWisdomBonus.SetValue(DNS_GV_aWisdomBonus.GetValue() + 3)
			ElseIf DNS_GV_aWisdom.GetValue() >= 16 && DNS_GV_aWisdom.GetValue() < 18
				DNS_GV_aWisdomBonus.SetValue(DNS_GV_aWisdomBonus.GetValue() + 4)
			ElseIf DNS_GV_aWisdom.GetValue() >= 18
				DNS_GV_aWisdomBonus.SetValue(DNS_GV_aWisdomBonus.GetValue() + 5)
			EndIf
			Game.GetPlayer().SetAV("Health", (C5 + DNS_GV_aConstitutionBonus.GetValue()))
			DNS_GV_cHitpoints.SetValue(DNS_GV_aConstitution.GetValue() + DNS_GV_aConstitutionBonus.GetValue())
		EndIf
		
				
	EndIf
			
	
	GetPlayerClass()
	GetSubclass()
	
EndEvent 

Function GetPlayerClass()
	Float Class3 = DNS_GV_cClass.GetValue()

	If Class3 == 0
		Class2 = "None"
	ElseIf Class3 == 1
		Class2 = "Fighter"
	ElseIf Class3 == 2
		Class2 = "Ranger"
	ElseIf Class3 == 3
		Class2 = "Wizard"
	EndIf
EndFunction 

Function GetSubclass()
	Float Subclass1 = DNS_GV_cSubclass.GetValue()

	If Subclass1 == 0 
		stringSubclass = "None"
	Elseif Subclass1 == 1
		stringSubclass = "Death Knight"
	ElseIf Subclass1 == 2
		stringSubclass = "Mage Slayer"
	ElseIf Subclass1 == 3
		stringSubclass = "Paladin"
	ElseIf Subclass1 == 4
		stringSubclass = "Champion of Nature"
	ElseIf Subclass1 == 5
		stringSubclass = "Night Stalker"
	ElseIf Subclass1 == 6
		stringSubclass = "Spirit Beast Ranger"
	ElseIf Subclass1 == 7 
		stringSubclass = "Battlemage"
	ElseIf Subclass1 == 8 
		stringSubclass = "Hallowed Necromancer"
	ElseIf Subclass1 == 9 
		stringSubclass = "White Mage"
	EndIf	
EndFunction 

Event OnKeyDown(Int Keycode)

	If Keycode == 59
	
		If DNS_GV_cSubclass.GetValue() == 0
			Debug.Notification("You do not have a Subclass yet")
		Else
		
			UpdateCurrentInstanceGlobal(DNS_GV_cExperience)
			If (DNS_GV_cExperience.GetValue()) == 0
				stringExperience = "Main"
			ElseIf (DNS_GV_cExperience.GetValue()) == 1
				stringExperience = "Sub"
			EndIf
			Debug.Notification("You are currently leveling your " + stringExperience + " class")
			Int expPref = DNS_Message_ExpSelect.Show()
			If expPref == 0 
				DNS_GV_cExperience.SetValue(0)
			ElseIf expPref == 1
				DNS_GV_cExperience.SetValue(1)
			EndIf
		EndIf
	EndIf
		
EndEvent