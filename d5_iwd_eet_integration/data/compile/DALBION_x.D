// creator  : /Users/bri/Desktop/BG/eet_3-23/NearInfinity.app/Contents/MacOS/NearInfinity.jar (v2.3-20220906)
// game     : /Users/bri/Desktop/BG/eet_3-23
// resource : DALBION.DLG
// source   : Override/DALBION.DLG
// dialog   : lang/en_US/dialog.tlk
// dialogF  : (none)

BEGIN ~DALBION~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #504037 /* ~Oh my! How did you get down here? Are you hurt?~ */
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504038 /* ~No... I'm fine. Why do you ask? Who are you?~ */ DO ~AddJournalEntry(496618,QUEST)
SetGlobal("CDTalkedAlbion","GLOBAL",1)
~ GOTO 1
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504039 /* ~Yes, actually, I'm hurt very badly.~ */ DO ~SetGlobal("CDTalkedAlbion","GLOBAL",1)
~ GOTO 2
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504040 /* ~I'll live. What is this place?~ */ DO ~AddJournalEntry(496618,QUEST)
SetGlobal("CDTalkedAlbion","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504041 /* ~Back off. I'll be doing the question-asking around here. First question... what are you doing down here?~ */ DO ~AddJournalEntry(496618,QUEST)
SetGlobal("CDTalkedAlbion","GLOBAL",1)
~ GOTO 4
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504042 /* ~I really need to be going. Farewell.~ */ DO ~AddJournalEntry(496618,QUEST)
SetGlobal("CDTalkedAlbion","GLOBAL",1)
~ GOTO 5
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
!Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504043 /* ~Why are you showing concern? Your black aura is clearly visible. The robes of a priest of the goddess of peace cannot hide your true form from a paladin.~ */ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #504044 /* ~My name is Albion. I am the Exalted Keeper of this Eldathyn retreat. I am sorry if I startled you. My students and I would never have expected... how did you make it down here?~ */
  IF ~~ THEN REPLY #504045 /* ~Eldath? The goddess of nature's peace, eh? Why do you have a temple in this god-forsaken place?~ */ GOTO 3
  IF ~~ THEN REPLY #504046 /* ~You and your students have just been sitting down here under a tribe of lizard men, a few packs of trolls, and a legion of undead? How'd you pull that off?~ */ GOTO 6
  IF ~~ THEN REPLY #504047 /* ~Do you know anything about the Heartstone Gem?~ */ GOTO 7
  IF ~~ THEN REPLY #504048 /* ~I'm sorry, I must be going now. Farewell.~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #504049 /* ~Oh my! I will have some of the priests tend to your wounds. Please accept our hospitality until you feel well. How did you find your way down here?~ */
  IF ~~ THEN REPLY #504050 /* ~I came here looking for an item from Kuldahar Pass. It is called the Heartstone Gem. Do you know of it?~ */ GOTO 7
  IF ~~ THEN REPLY #504051 /* ~I am a mercenary. My feet take me wherever there is profit to be made.~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.0
  SAY #504052 /* ~This is a sanctuary for Eldathyn. We were drawn here when we dreamed of the foul pollution that was occurring in this area. Unfortunately, the trolls, lizard men, and other creatures are very difficult to work around.~ */
  IF ~~ THEN REPLY #504053 /* ~Why don't you just kill them?~ */ GOTO 10
  IF ~~ THEN REPLY #504054 /* ~Do you know anything about the Heartstone Gem from Kuldahar?~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #504055 /* ~I... what? We're Eldathyn. We worship the goddess of peace and tranquility. She is a goddess of nature. As her servants, we are charged with protecting the purity of water and the life it gives.~ */
  IF ~~ THEN REPLY #504056 /* ~Tell me what you know about the Heartstone Gem.~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.3 7.0 8.1 11.1 12.1 13.2 14.2 15.1 16.1 18.2
  SAY #504057 /* ~Very well. If you have need of our beds, you may rest here. Our healer, Sharra, is located to the east. May Eldath and her peace watch over you.~ */
  IF ~~ THEN DO ~AddJournalEntry(496618,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY #504058 /* ~Our non-violent nature protects us from the raw aggression of our... less intelligent cousins. The lizard men and trolls leave us alone as long as we don't venture too far into the caves above.~ */
  IF ~~ THEN REPLY #504059 /* ~Interesting. Do you know anything about the Heartstone Gem?~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.0 3.1 4.0 6.0 8.0 9.0 10.2 11.0 12.0
  SAY #504060 /* ~The Heartstone Gem? It's a sacred artifact of Silvanus, isn't it? I heard that it used to rest in Kuldahar, but that it was lost long ago. Other than that, I don't know much about it.~ */
  IF ~~ THEN REPLY #504061 /* ~I must be going now. Farewell, priest.~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from:
  SAY #504062 /* ~Evil, you say? I believe you were right to come to the Dragon's Eye. There must be some evil force at work to have brought the trolls and lizard men here. If you want my opinion, I think it's that foul priestess of Talona in the caves above.~ */
  IF ~~ THEN REPLY #504063 /* ~Yes. I encountered her minions. Do you think that she is involved with the theft of the Heartstone Gem?~ */ GOTO 7
  IF ~~ THEN REPLY #504061 /* ~I must be going now. Farewell, priest.~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY #504064 /* ~You must lead a lonely existence, mercenary. Those who hack a road through life with the sword of violence are doomed to find themselves awash in blood and misery at the end of their days.~ */
  IF ~~ THEN REPLY #504065 /* ~Whatever. Tell me what you know about the Heartstone Gem.~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 3.0
  SAY #504066 /* ~Kill them? No, no, my violent young friend. We Eldathyn are devoted to peace. It is not a confinement on our lives... it is a liberation. We would rather die than harm our cousins in the caves above.~ */
  IF ~~ THEN REPLY #504067 /* ~That's *really* stupid.~ */ GOTO 11
  IF ~~ THEN REPLY #504068 /* ~Such devotion is truly admirable.~ */ GOTO 12
  IF ~~ THEN REPLY #504069 /* ~Hmm. Have you ever heard of the Heartstone Gem, the magical life-giving relic from Kuldahar? We're looking for it.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #504070 /* ~We don't expect everyone to see things the way we do. Is there anything else I can help you with?~ */
  IF ~~ THEN REPLY #504071 /* ~Yes. Can you tell me what you know about the Heartstone Gem?~ */ GOTO 7
  IF ~~ THEN REPLY #504072 /* ~No. I can't deal with such blockheaded religious stupidity. Farewell.~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #504073 /* ~It's like second nature to us, really. It is a very satisfying way of life. Is there anything else I can help you with?~ */
  IF ~~ THEN REPLY #504071 /* ~Yes. Can you tell me what you know about the Heartstone Gem?~ */ GOTO 7
  IF ~~ THEN REPLY #504074 /* ~No, thanks. I must be going now.~ */ GOTO 5
END

IF WEIGHT #2 /* Triggers after states #: 24 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Yuanti_Surprise","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #504075 /* ~Hello again. What can Albion do for you, my friend?~ */
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504076 /* ~Are you sure you don't know anything about the Heartstone Gem?~ */ GOTO 14
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504077 /* ~Where is the healer located?~ */ GOTO 15
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504078 /* ~Nothing, thanks. I must be going now.~ */ GOTO 5
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
!Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504079 /* ~Albion, you can cease with the attempt at civility. I am a warrior of light. The blackness of your heart is as clear to me as the purest water; water that you defile by donning the robes of a priest of Eldath.~ */ GOTO 25
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #504080 /* ~Yes, I'm quite certain. I've heard legends about its powers, of course, but I don't know who stole it from the Temple of the Forgotten God.~ */
  IF ~  CheckStatGT(LastTalkedToBy,15,INT)
~ THEN REPLY #504081 /* ~Uh, Albion... I never told you that the gem was stolen from the Temple of the Forgotten God.~ */ GOTO 16
  IF ~~ THEN REPLY #504077 /* ~Where is the healer located?~ */ GOTO 15
  IF ~~ THEN REPLY #504082 /* ~Hmm. Okay. Thanks anyway. Farewell.~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.1
  SAY #504083 /* ~She is located to the east. Simply go through the large door behind me and take the hallway until you can turn right. She's through the first door on your left after that. Take care to not wander too far. Our inner sanctum is closed to outsiders.~ */
  IF ~~ THEN REPLY #504076 /* ~Are you sure you don't know anything about the Heartstone Gem?~ */ GOTO 14
  IF ~~ THEN REPLY #504084 /* ~Thanks for your help, Albion. Farewell.~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #504085 /* ~Oh... well, it's a local legend, you know. I heard it from one of the natives.~ */
  IF ~~ THEN REPLY #504086 /* ~No... no. If my memory is correct, Arundel told me that very few people even knew that the Temple of the Forgotten God actually existed. It seems unlikely that any random native would have told you that the Heartstone Gem was there.~ */ DO ~AddXP2DA("ID1EX7A")
DisplayStringNoNameDlg(LastTalkedToBy,504087)
SetGlobal("Yuanti_Inferno","GLOBAL",1)
Enemy()
~ GOTO 17
  IF ~~ THEN REPLY #504088 /* ~Hmm. Okay. Thanks, Albion. Farewell.~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #504089 /* ~Ah. Arundel, Arundel. Why did that tree-loving fool have to get involved with this? He will hang by his entrails on his precious tree once we are finished with him. As for you, my friend... your inquisitive tongue will soon be ripped from your fat head. You will not stand in the way of my clan's return to power. *None* will oppose us!~ */
  IF ~~ THEN REPLY #504090 /* ~What in the Nine Hells are you talking about, Albion?!~ */ EXIT
  IF ~~ THEN REPLY #504091 /* ~Yeah, that's what I thought. I knew you were a liar the first time I talked to you.~ */ EXIT
  IF ~~ THEN REPLY #504092 /* ~You had me going there for a moment, Albion. Good effort. You lose.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 24 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Yuanti_Surprise","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #504075 /* ~Hello again. What can Albion do for you, my friend?~ */
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504093 /* ~Albion, can you tell me what in the Nine Hells is going on around here? I've seen some pretty odd things walking through your "den of peace," friend.~ */ DO ~AddJournalEntry(496619,QUEST)
~ GOTO 19
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504094 /* ~I was wondering if you could tell me about some of the things I've seen in your sanctuary.~ */ DO ~AddJournalEntry(496619,QUEST)
~ GOTO 19
  IF ~  OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504095 /* ~Nothing. I'm fine. Farewell.~ */ GOTO 5
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
!Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504079 /* ~Albion, you can cease with the attempt at civility. I am a warrior of light. The blackness of your heart is as clear to me as the purest water; water that you defile by donning the robes of a priest of Eldath.~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #504096 /* ~Oh dear! What sorts of things?~ */
  IF ~  Global("Yuanti_Books","GLOBAL",1)
~ THEN REPLY #504097 /* ~I found some books on your shelves that had some pretty strange titles. Are "How to Serve Man" and "Ophidian Necromancy" standard texts in Eldathyn monasteries?~ */ GOTO 20
  IF ~  Global("Yuanti_Carpet","GLOBAL",1)
~ THEN REPLY #504098 /* ~I was looking at some of your carpets, the red and gold ones. They are quite exotic for an Eldathyn retreat. What do the gold carp on them symbolize?~ */ GOTO 21
  IF ~  Global("Yuanti_Room","GLOBAL",1)
~ THEN REPLY #504099 /* ~One of the rooms to the north, it smells like someone died in there.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #504100 /* ~No, no. Not in Eldathyn monasteries. However, they are quite common in hidden yuan-ti temples to Sseth.~ */
  IF ~~ THEN REPLY #504101 /* ~Hidden yuan-ti temples to Sseth? Heh, I suppose. But where are you going to find one of those around... hey!~ */ GOTO 23
  IF ~  Class(LastTalkedToBy,CLERIC_ALL)
~ THEN REPLY #504102 /* ~A servant of the god of serpents masquerading as the head of an Eldathyn retreat. What are you planning on doing now, Albion?~ */ GOTO 23
  IF ~~ THEN REPLY #504103 /* ~Hmm. I think I'll be going now. Farewell, Albion.~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #504104 /* ~They symbolize rising strength, a return to power. They mark the ascension of my clan to primacy in this world. It has taken us thousands of years to reach this position. Now that you have your answer, meddling buffoon, my kin and I will have to annihilate you.~ */
  IF ~~ THEN REPLY #504105 /* ~What?! I just wanted to know about the fish, you crazy bastard!~ */ DO ~Enemy()
SetGlobal("Yuanti_Inferno","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #504106 /* ~Yeah, that's what I thought. I knew there was something weird about you the moment I set eyes on you. So it turns out you're part of some strange cult. No big surprise to me.~ */ DO ~Enemy()
SetGlobal("Yuanti_Inferno","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #504107 /* ~Uh, Albion, what are you talking about?~ */ DO ~Enemy()
SetGlobal("Yuanti_Inferno","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #504108 /* ~Someone did die in there. Many, many people died in there. Now that you have chosen to poke your head into our affairs, you will be the next humanoid to have the honor of dying in that room.~ */
  IF ~~ THEN REPLY #270827 /* ~Huh?~ */ GOTO 23
  IF ~~ THEN REPLY #504109 /* ~Oh yeah, and I suppose you're going to be the one to do it, right, old man? What are you going to do... turn into a snake or something?~ */ GOTO 23
  IF ~~ THEN REPLY #504110 /* ~Heh. Good one, Albion. I didn't think Eldathyn had a sense of humor.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 20.0 20.1 20.2 21.0 21.1 21.2 22.0 22.1 22.2 25.0
  SAY #504111 /* ~Have you ever been afraid of snakes, little one? Have you ever trembled at the sound of his hiss? You are afraid because you recognize a master race. Long before your kind danced on these lands, my people ruled on high! It shall be that way again, humanoid! All shall bask in the glory of Sseth! None shall stand against Yxunomei, his princess! Ah ha ha ha ha!~ */
  IF ~~ THEN REPLY #504112 /* ~I still have no idea what you're talking about.~ */ DO ~AddXP2DA("ID1EX7A")
DisplayStringNoNameDlg(LastTalkedToBy,504087)
SetGlobal("Yuanti_Inferno","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #504113 /* ~I'll stand against you, madman. You're obviously behind the abduction of the Heartstone Gem. Don't think you can stop me from finding it.~ */ DO ~AddXP2DA("ID1EX7A")
DisplayStringNoNameDlg(LastTalkedToBy,504087)
SetGlobal("Yuanti_Inferno","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #504114 /* ~I certainly won't stand against you, Albion. However, I do think I'll be leaving now...~ */ DO ~AddXP2DA("ID1EX7A")
DisplayStringNoNameDlg(LastTalkedToBy,504087)
SetGlobal("Yuanti_Inferno","GLOBAL",1)
Enemy()
~ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
Global("Yuanti_Inferno","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #504115 /* ~Slaughter! Blood and slaughter! Take the flesh of the unbelievers and roast it upon a pit of flame! Serve their hearts to Yxunomei, our princess! Devour them! Devour them in the name of Sseth, the Sibilant Death!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.5 13.3 18.3
  SAY #504116 /* ~So, holy warrior, you can see through our visage! Good. Your sickening aura was already causing me considerable discomfort. You will die for exposing us!~ */
  IF ~~ THEN GOTO 23
END
