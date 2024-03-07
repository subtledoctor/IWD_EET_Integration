// creator  : /Applications/IWDEE 2-6-6/NearInfinity.app/Contents/MacOS/NearInfinity.jar (v2.3-20220906)
// game     : /Applications/IWDEE 2-6-6
// resource : DHJOLLDE.DLG
// source   : data/DLGFILE.bif
// dialog   : lang/en_US/dialog.tlk
// dialogF  : (none)

BEGIN ~DHJOLLDE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumberOfTimesTalkedTo(0)

Global("Know_Hjollder","GLOBAL",0)

~ THEN BEGIN 0 // from:
  SAY #22579 /* ~By Tempos! The vision speaks true. You *are* the heroes from my dreams.~ [HJOLL001] */
  IF ~~ THEN REPLY #22580 /* ~Do I know you?~ */ DO ~SetGlobal("Know_Hjollder","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY #11452 /* ~What are you talking about?~ */ DO ~SetGlobal("Know_Hjollder","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY #22582 /* ~You must have us confused with some other heroes. Farewell.~ */ DO ~SetGlobal("Know_Hjollder","GLOBAL",1)~ GOTO 17
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22583 /* ~Our paths have not crossed until this day. I am Hjollder[Yole-dare], son to Hrethric[Reth-rick], elder and shaman to the Tribe of the Bear.~ [HJOLL002] */
  IF ~~ THEN REPLY #22586 /* ~Well met, Hjollder. What's this business about dreams and visions?~ */ GOTO 2
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22589 /* ~What's a tribesman doing here in Kuldahar?~ */ GOTO 2
  IF ~  Global("Join_Posse","GLOBAL",0)~ THEN REPLY #22590 /* ~What's a tribesman doing here in Lonelywood?~ */ GOTO 2
  IF ~~ THEN REPLY #22591 /* ~Shaman, eh? That explains all this nonsense about visions.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 1.1 1.2 1.3 25.0
  SAY #22592 /* ~The vision is why I have come to this place. Tempos has guided me to you.~ [HJOLL003] */
  IF ~  Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY #40801 /* ~I also serve the god of battles. Tell me of your vision.~ */ GOTO 4
  IF ~~ THEN REPLY #1355 /* ~For what purpose?~ */ GOTO 3
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
        !Kit(LastTalkedToBy,Blackguard)~ THEN REPLY #22594 /* ~If your god has guided you to us, then your need must be great indeed.~ */ GOTO 8
  IF ~~ THEN REPLY #22595 /* ~Well, you found us... now Tempos can guide you elsewhere. Farewell.~ */ GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 2.1 17.0 17.1
  SAY #22596 /* ~This I cannot say. I know only that the storm of war darkens the skies of my homeland. My people are gathering in numbers greater than any have seen for generations.~ [HJOLL004] */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 8.0
  SAY #22597 /* ~A king, both new and old, has risen to lead the tribes against the Ten Towns. Already the first snows of winter bear the dark stains of spilt blood.~ [HJOLL005] */
  IF ~~ THEN REPLY #22598 /* ~I don't see what any of this has to do with us.~ */ GOTO 5
  IF ~~ THEN REPLY #22599 /* ~Tell me more of this new *and* old king.~ */ DO ~SetGlobal("Know_Wylf","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY #22600 /* ~Speak plainly. What do you want from us?~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0 10.1 12.3 16.1 16.2
  SAY #22601 /* ~You must understand. I have read the signs. Tempos will not favor either side in the coming battles. Both my people and those of the towns shall be haunted by countless deaths without honor.~ [HJOLL006] */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #22602 /* ~I have cast my spirit into the nether realm in search of a way to prevent what must not be. My vision quest led me here to find you. *You* are the answer I seek.~ [HJOLL007] */
  IF ~  Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY #40802 /* ~The visions of Tempus are not always clear, but I believe your interpretation. What can we do?~ */ GOTO 7
  IF ~  !Kit(LastTalkedToBy,OHTEMPUS)~ THEN REPLY #22603 /* ~I see. So what can we do to help?~ */ GOTO 7
  IF ~  Global("Know_Wylf","GLOBAL",1)~ THEN REPLY #22604 /* ~Tell me again of this new *and* old king.~ */ GOTO 9
  IF ~  Global("Know_Wylf","GLOBAL",0)~ THEN REPLY #22605 /* ~Tell me of this new *and* old king.~ */ DO ~SetGlobal("Know_Wylf","GLOBAL",1)~ GOTO 9
  IF ~  !Kit(LastTalkedToBy,OHTEMPUS)
        GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22606 /* ~Sorry to disappoint you, but we have other plans. Farewell.~ */ EXIT
  IF ~  Kit(LastTalkedToBy,OHTEMPUS)
        GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #40803 /* ~The visions of Tempus are not always clear. We have other plans.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.1 16.0 25.1
  SAY #22607 /* ~You must come to Hengorot[hen-gore-oh]... to the great mead hall where the tribes have gathered. You alone can forestall the war between our peoples.~ [HJOLL008] */
  IF ~  Global("Join_Posse","GLOBAL",0)~ THEN REPLY #22629 /* ~Very well. We shall accompany you.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)
          AddJournalEntry(26302,QUEST)
          EraseJournalEntry(26297)
          EraseJournalEntry(25836)
          EraseJournalEntry(34118)~ GOTO 18
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
          XPGT(Player1,249999)~ THEN REPLY #22629 /* ~Very well. We shall accompany you.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)
          AddJournalEntry(25836,QUEST)
          EraseJournalEntry(26297)~ GOTO 21
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
        XPLT(Player1,250000)~ THEN REPLY #22629 /* ~Very well. We shall accompany you.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)~ GOTO 83
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
        Global("Hjollder_Quest","GLOBAL",0)~ THEN REPLY #8648 /* ~Maybe some other time. Farewell.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",1)~ EXIT
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
        Global("Hjollder_Quest","GLOBAL",1)~ THEN REPLY #8648 /* ~Maybe some other time. Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #22642 /* ~Yes. The storm of war darkens the skies of my homeland. My people are gathering in numbers greater than any have seen for generations.~ [HJOLL009] */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 4.1 6.2 6.3
  SAY #22643 /* ~Wylfdene[Wilf-dane] is his name. He was a great warrior from an elder tribe who was slain in battle on the eve of last season.~ [HJOLL010] */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22646 /* ~Now his body has returned from death's halls to lead my people once more... as king.~ [HJOLL011] */
  IF ~~ THEN REPLY #22648 /* ~He came back from the grave? What kind of undead monster is this king of yours?~ */ GOTO 11
  IF ~~ THEN REPLY #22650 /* ~Interesting... but I don't see what any of this has to do with us.~ */ GOTO 5
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22651 /* ~I've heard enough. Go spin your yarns at the tavern if you like... we've got better things to do.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22652 /* ~Wylfdene's flesh is but a vessel, a borrowed tool. The spirit of the new king is much, much older than the form it now inhabits.~ [HJOLL012] */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22653 /* ~It is said that the spirit of Jerrod governs his body. It is this claim that has fueled the fires of vengeance among my people.~ [HJOLL013] */
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
        GlobalGT("Jered_Stone","GLOBAL",0)~ THEN REPLY #22654 /* ~Jerrod? Isn't he the barbarian hero entombed beneath the temple in Easthaven?~ */ GOTO 13
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
        Global("Jered_Stone","GLOBAL",0)~ THEN REPLY #22656 /* ~Jerrod? Who is he?~ */ GOTO 14
  IF ~  Global("Join_Posse","GLOBAL",0)~ THEN REPLY #22658 /* ~Jerrod? Isn't he the barbarian hero who was entombed beneath the temple in Easthaven?~ */ GOTO 13
  IF ~~ THEN REPLY #22659 /* ~Sounds like a problem... but not *our* problem.~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.2
  SAY #22661 /* ~[surprised]The same. You know our history well.~ [HJOLL014] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #22662 /* ~Jerrod was our greatest hero. Centuries ago, he united the tribes and led us to victory against invaders from the south.~ [HJOLL015] */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #22663 /* ~He died on the battlefield in the embrace of infernal magicks, bravely sacrificing his life to save his people.~ [HJOLL016] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.0 15.0
  SAY #22664 /* ~Now, after centuries of imprisonment, Jerrod's spirit is free and rallies the tribes once more in a common cause.~ [HJOLL017] */
  IF ~~ THEN REPLY #22603 /* ~I see. So what can we do to help?~ */ GOTO 7
  IF ~~ THEN REPLY #22667 /* ~If this Jerrod was such a great hero, surely his cause must be just. So why are you here?~ */ GOTO 5
  IF ~~ THEN REPLY #22668 /* ~The ghost of one of your ancestors is leading your people to war? Forgive me if I don't believe you.~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 0.2 2.3
  SAY #22669 /* ~Wait... I beg you. I have risked much to find you. I am certain the vision spoke true. Only *you* can help my people.~ [HJOLL018] */
  IF ~~ THEN REPLY #22670 /* ~You say a vision led you to us? For what purpose?~ */ GOTO 3
  IF ~~ THEN REPLY #22671 /* ~What makes you think we can do anything to help your people?~ */ GOTO 3
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #8648 /* ~Maybe some other time. Farewell.~ */ DO ~AddJournalEntry(25837,INFO)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.0 27.0
  SAY #22673 /* ~Though we journey towards the same destination, our paths are not one. My place is at the side of my king. Already I have been gone too long.~ [HJOLL019] */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22674 /* ~From here, you must go alone. The people of this town will know the way to the camp of my people.~ [HJOLL020] */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #22675 /* ~Travel swiftly and safely. We shall meet again when you stand before the council in the great mead hall.~ [HJOLL021] */
  IF ~~ THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",4)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("HJescape")
          AddJournalEntry(26298,QUEST)
          EraseJournalEntry(26297)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 7.1 25.5
  SAY #22676 /* ~I am honored by your choice. The journey is a long one, and our quest is urgent. I shall summon the wind to carry us through the mountains and over the tundra.~ [HJOLL022] */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #22677 /* ~Know this... should you wish to return to this place, it is within my power to bring you back. But walking upon the wind taxes one's spirit greatly.~ [HJOLL023] */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #22678 /* ~It may be days before I can make the journey again. Now... are you prepared to depart?~ [HJOLL024] */
  IF ~~ THEN REPLY #22679 /* ~Yes. Let us be off.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",3)
        ClearAllActions()
        StartCutSceneMode()
        StartCutScene("KUtoLW")~ EXIT
  IF ~~ THEN REPLY #22680 /* ~Not yet. We have some unfinished business to attend to first.~ */ DO ~SetGlobal("Hjollder_Delay","GLOBAL",1)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.6
  SAY #22681 /* ~Very well. I shall remain here until you return. Mark well the passage of time. The storm draws closer with each passing moment.~ [HJOLL025] */
  IF ~~ THEN REPLY #288 /* ~Farewell.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 62 61 even though they appear after this state */
~  GlobalLT("Hjollder_Quest","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #22682 /* ~You have returned. Again it is as the vision foretold.~ [HJOLL026] */
  IF ~  Global("Hjollder_Quest","GLOBAL",0)~ THEN REPLY #22683 /* ~What is this vision you keep harping on about?~ */ GOTO 2
  IF ~  Global("Hjollder_Quest","GLOBAL",1)~ THEN REPLY #22684 /* ~What is it with you and this vision? What do you want from us?~ */ GOTO 7
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",2)~ THEN REPLY #22685 /* ~Right. We must be going now. Farewell.~ */ EXIT
  IF ~  Global("Hjollder_Delay","GLOBAL",1)
        Global("Hjollder_Quest","GLOBAL",2)
        XPGT(Player1,249999)~ THEN REPLY #22686 /* ~We are ready to accompany you now. Let us be off.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",3)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("KUtoLW")~ EXIT
  IF ~  Global("Hjollder_Quest","GLOBAL",2)
        XPLT(Player1,250000)~ THEN REPLY #22686 /* ~We are ready to accompany you now. Let us be off.~ */ GOTO 83
  IF ~  Global("Hjollder_Delay","GLOBAL",0)
        Global("Hjollder_Quest","GLOBAL",2)
        XPGT(Player1,249999)~ THEN REPLY #22686 /* ~We are ready to accompany you now. Let us be off.~ */ GOTO 21
  IF ~  Global("Hjollder_Quest","GLOBAL",2)~ THEN REPLY #22688 /* ~Sorry. We are still not ready to leave just yet.~ */ GOTO 24
END

IF WEIGHT #4 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #22689 /* ~We have arrived outside the settlement your people call Lonelywood. Of the Ten Towns, it is the nearest to my people's homeland and will no doubt fall first if my people heed Wylfdene's call to war.~ [HJOLL027] */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #22690 /* ~Now I must leave you, for I am not welcome among the homes of these southerners.~ [HJOLL028] */
  IF ~~ THEN REPLY #22691 /* ~You're leaving? I thought you were supposed to take us to this mead hall of yours.~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from:
  SAY #22692 /* ~Stay your hand, mighty Wylfdene. These strangers bear our people no malice—upon my oath.~ [HJOLL029] */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #22693 /* ~I know this, for it was I who bade them to appear before this council.~ [HJOLL030] */
  IF ~~ THEN EXTERN ~DWYLF~ 41
END

IF ~~ THEN BEGIN 30 // from:
  SAY #22696 /* ~Their coming was foretold by a vision. I have been to the other side, great king. The spirits have shown me these heroes and other images that speak the will of Tempos.~ [HJOLL031] */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #22697 /* ~If Tempos has called these strangers to us, then surely we cannot dishonor ourselves by slaying them within the hallowed halls of Hengorot.~ [HJOLL032] */
  IF ~~ THEN EXTERN ~DWYLF~ 42
END

IF ~~ THEN BEGIN 32 // from:
  SAY #22698 /* ~I... I do not know. The vision was unclear as to what purpose they must serve, but it must—~ [HJOLL033] */
  IF ~~ THEN DO ~SetGlobal("Body_Count","GLOBAL",1)

~ EXTERN ~DWYLF~ 43
END

IF WEIGHT #5 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",4)

~ THEN BEGIN 33 // from:
  SAY #22699 /* ~What's this? More spirits come to torment my treasonous heart? Be gone, vengeful ghosts! Allow me to endure my shame in peace.~ [HJOLL034] */
  IF ~~ THEN REPLY #22700 /* ~We're no ghosts, Hjollder. We're flesh and blood like you.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
         SetGlobal("Body_Count","GLOBAL",2)
         AddXP2DA("Level_12_Average")
         DisplayStringNoNameDlg(Myself,26308)
         EraseJournalEntry(40680)~ GOTO 34
  IF ~~ THEN REPLY #6159 /* ~As you wish. Farewell.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
         SetGlobal("Body_Count","GLOBAL",2)
         AddXP2DA("Level_12_Average")
         DisplayStringNoNameDlg(Myself,26308)
         EraseJournalEntry(40680)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #22702 /* ~How can this be? Wylfdene expelled you from the camp. Your quest was over before it began. Why have you come to this place?~ [HJOLL035] */
  IF ~~ THEN REPLY #22703 /* ~We've come to rescue you.~ */ GOTO 35
  IF ~~ THEN REPLY #22704 /* ~Wylfdene did more than just expel us... he tried to have us killed!~ */ GOTO 42
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22705 /* ~That's right... our quest is over. We'd like to return to Kuldahar now.~ */ GOTO 43
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #22706 /* ~Rescue me? You do not understand. There shall be no rescue for me... only redemption found in death's embrace. I belong here and shall remain until my spirit has been cleansed for the crossing.~ [HJOLL036] */
  IF ~~ THEN REPLY #22707 /* ~Are you saying you've decided to just give up and die here?~ */ GOTO 36
  IF ~~ THEN REPLY #22708 /* ~Look, we've come a long way to find you. We're not about to just give up and go home.~ */ GOTO 36
  IF ~~ THEN REPLY #22709 /* ~So be it. Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 42.0 42.1 43.0 43.1
  SAY #22739 /* ~My fate has been decreed by Wylfdene. An honest man accepts all judgments of his chosen king.~ [HJOLL037] */
  IF ~  Global("Know_Soul","GLOBAL",1)

~ THEN REPLY #22740 /* ~What if we were to tell you Wylfdene isn't who he claims to be?~ */ GOTO 37
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
        !Kit(LastTalkedToBy,Blackguard)~ THEN REPLY #22741 /* ~You are indeed honest, but my faith has allowed me to see into the heart of your king. The touch of evil is upon him.~ */ GOTO 45
  IF ~  Global("Know_Soul","GLOBAL",0)
        OR(2)
          !Class(LastTalkedToBy,PALADIN_ALL)
          Kit(LastTalkedToBy,Blackguard)~ THEN REPLY #22742 /* ~There must be something we can do.~ */ GOTO 44
  IF ~~ THEN REPLY #22709 /* ~So be it. Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 46.0
  SAY #22744 /* ~What? The king is false? How is this known to you?~ [HJOLL038] */
  IF ~~ THEN REPLY #22747 /* ~We have spoken with the spirits of this island. They have told us that the spirit that inhabits Wylfdene's body is corrupted by evil.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #22748 /* ~Yes... I see. It is this corruption that has placed the spirits in turmoil. These visions I have had of late are the manifestations of their anguish.~ [HJOLL039] */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #22749 /* ~However, I fear I have risked too much already based upon the word of spirits. If I am to act against my king, I must have proof.~ [HJOLL040] */
  IF ~~ THEN REPLY #22750 /* ~Where can we find such proof?~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0 45.0
  SAY #22751 /* ~If the soul that inhabits Wylfdene's body is indeed corrupt, then perhaps it may have left signs of its passing within the tomb of the dead king.~ [HJOLL041] */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #22752 /* ~Seek your proof within the barrows of this island. Should you discover anything of importance, return it here to me and we shall discuss our quest further.~ [HJOLL042] */
  IF ~  PartyHasItem("wylfins")~ THEN REPLY #22753 /* ~We found this amulet within Wylfdene's tomb. It appears to have been intentionally defaced.~ */ DO ~TakePartyItem("wylfins")
          SetGlobal("Hjollder_Quest","GLOBAL",7)
          AddXP2DA("Level_12_Hard")
          DisplayStringNoNameDlg(Myself,26309)
          EraseJournalEntry(26300)~ GOTO 48
  IF ~  !PartyHasItem("wylfins")~ THEN REPLY #22754 /* ~Very well. Farewell for now, Hjollder.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",6)
          AddJournalEntry(26300,QUEST)
          EraseJournalEntry(26295)
          EraseJournalEntry(34114)~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 34.1
  SAY #22755 /* ~Please... try not to judge my people so harshly. It was my foolishness that put your lives in danger. It is only right that I remain exiled here... until death frees me.~ [HJOLL043] */
  IF ~~ THEN REPLY #22707 /* ~Are you saying you've decided to just give up and die here?~ */ GOTO 36
  IF ~~ THEN REPLY #22708 /* ~Look, we've come a long way to find you. We're not about to just give up and go home.~ */ GOTO 36
  IF ~~ THEN REPLY #22709 /* ~So be it. Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.2 46.3
  SAY #22759 /* ~I'm afraid that is not possible. I have been banished to this place for my treason. Here I must remain until death's shadow falls upon me.~ [HJOLL044] */
  IF ~~ THEN REPLY #22707 /* ~Are you saying you've decided to just give up and die here?~ */ GOTO 36
  IF ~~ THEN REPLY #22708 /* ~Look, we've come a long way to find you. We're not about to just give up and go home.~ */ GOTO 36
  IF ~~ THEN REPLY #22709 /* ~So be it. Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 46.2
  SAY #22763 /* ~I'm afraid not. I have been banished by law. No longer am I a shaman of the Tribe of the Bear. I am even forbidden to commune with the spirits until my own is ready to join them.~ [HJOLL045] */
  IF ~~ THEN REPLY #22770 /* ~Then we shall speak with the spirits of this island. Perhaps they will tell us what to do. Farewell.~ */ DO ~AddJournalEntry(26295,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.1 46.1
  SAY #22771 /* ~I suspect your vision to be true. However, I have already risked too much on visions. If I am to act against my king, I must have proof.~ [HJOLL046] */
  IF ~~ THEN REPLY #22750 /* ~Where can we find such proof?~ */ GOTO 40
END

IF WEIGHT #6 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",5)
~ THEN BEGIN 46 // from:
  SAY #22773 /* ~You should not remain on this island. The shame of this banishment is mine alone to bear. So my king has decreed.~ [HJOLL047] */
  IF ~  Global("Know_Soul","GLOBAL",1)~ THEN REPLY #22774 /* ~What if we were to tell you that Wylfdene isn't who he claims to be?~ */ GOTO 37
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
        !Kit(LastTalkedToBy,Blackguard)~ THEN REPLY #22741 /* ~You are indeed honest, but my faith has allowed me to see into the heart of your king. The touch of evil is upon him.~ */ GOTO 45
  IF ~  Global("Know_Soul","GLOBAL",0)
        OR(2)
          !Class(LastTalkedToBy,PALADIN_ALL)
          Kit(LastTalkedToBy,Blackguard)~ THEN REPLY #22742 /* ~There must be something we can do.~ */ GOTO 44
  IF ~ GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22793 /* ~We'd like to return to Kuldahar now.~ */ GOTO 43
  IF ~~ THEN REPLY #22709 /* ~So be it. Farewell, Hjollder.~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",6)

~ THEN BEGIN 47 // from:
  SAY #22795 /* ~You have returned. Have you found any clues within the barrows?~ [HJOLL048] */
  IF ~  PartyHasItem("wylfins")~ THEN REPLY #22796 /* ~We found this amulet within Wylfdene's tomb. It appears to have been intentionally defaced.~ */ DO ~TakePartyItem("wylfins")
          SetGlobal("Hjollder_Quest","GLOBAL",7)
          AddXP2DA("Level_12_Hard")
          DisplayStringNoNameDlg(Myself,26309)
          EraseJournalEntry(26300)~ GOTO 48
  IF ~ !PartyHasItem("wylfins")~ THEN REPLY #22797 /* ~Not yet... we're still looking. Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #22798 /* ~This is Wylfdene's tribal insignia. Such chains are worn by the kings of my people and are considered the most precious of worldly possessions.~ [HJOLL049] */
  IF ~~ THEN REPLY #8694 /* ~So?~ */ DO ~AddJournalEntry(26299,QUEST)~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #22799 /* ~No true tribesman would dare to deface so sacred an object. If Wylfdene is responsible for this desecration, then it is *not* the spirit of Jerrod that now inhabits his body.~ [HJOLL050] */
  IF ~~ THEN REPLY #22800 /* ~If not Jerrod, then who?~ */ GOTO 50
  IF ~~ THEN REPLY #22801 /* ~I see. What do we do now?~ */ GOTO 51
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22802 /* ~We have provided you with the proof you needed... now we would like to return to Kuldahar.~ */ GOTO 60
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #22803 /* ~This I do not know. Even in my visions, the face of the king is obscured... almost as if my vision is opposed.~ [HJOLL051] */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.0 63.0
  SAY #22804 /* ~There is one who might help us in our quest. If legend holds true, she may be able to see this soul for what it truly is.~ [HJOLL052] */
  IF ~~ THEN REPLY #22805 /* ~Who is this person you speak of?~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #22806 /* ~She is known as the Gloomfrost Seer. She was once a powerful channeler of spirits that lived among the Tribe of the Elk.~ [HJOLL053] */
  IF ~~ THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",8)~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 63.1
  SAY #22807 /* ~The legend says that her gift of sight was so great it turned her eyes to dust. It is said she fled north, to dwell within the darkness of the Gloomfrost.~ [HJOLL054] */
  IF ~~ THEN REPLY #22808 /* ~You think this woman can help?~ */ GOTO 54
  IF ~~ THEN REPLY #22809 /* ~What is the Gloomfrost?~ */ GOTO 55
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22810 /* ~On second thought... we'd like to return to Kuldahar first.~ */ DO ~SetGlobal("OH_GLOOM","GLOBAL",1)
          RevealAreaOnMap("ar9500")~ GOTO 60
  IF ~~ THEN REPLY #22811 /* ~On second thought... I think we've done enough for you and your people. Farewell.~ */ DO ~SetGlobal("OH_GLOOM","GLOBAL",1)
          RevealAreaOnMap("ar9500")~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #22812 /* ~The Gloomfrost Seer sees many things that are kept from the eyes of mortals. If she still lives, she may be the *only* help for us now.~ [HJOLL055] */
  IF ~~ THEN REPLY #22813 /* ~What exactly is the Gloomfrost?~ */ GOTO 55
  IF ~~ THEN REPLY #22814 /* ~So where can we find this witch?~ */ GOTO 55
  IF ~~ THEN REPLY #22811 /* ~On second thought... I think we've done enough for you and your people. Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0 54.1
  SAY #22816 /* ~The Gloomfrost lies far to the northeast, beyond the Reghed Glacier. It is an ancient place, as old as the world itself.~ [HJOLL056] */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #22817 /* ~The tales of my people say that the Gloomfrost marks the place where the sun was expelled from the womb of Toril when she was still a young mother.~ [HJOLL057] */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #22818 /* ~It is said that the heat of the infant sun scarred the glacier as it fled to the sky, turning the ice black as night and casting the surrounding land into darkness.~ [HJOLL058] */
  IF ~~ THEN REPLY #22819 /* ~Sounds like a cheerful place. How do we find it?~ */ GOTO 58
  IF ~~ THEN REPLY #22811 /* ~On second thought... I think we've done enough for you and your people. Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 63.2
  SAY #22821 /* ~I shall mark the way upon your map. Make haste in your journey, but beware... the guardians of the Gloomfrost protect the Seer from the intrusions of man. Only those who prove themselves worthy shall be granted her wisdom.~ [HJOLL059] */
  IF ~~ THEN REPLY #22822 /* ~Very well. We'll make for the Gloomfrost without delay.~ */ DO ~AddJournalEntry(26321,QUEST)~ GOTO 59
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22810 /* ~On second thought... we'd like to return to Kuldahar first.~ */ DO ~SetGlobal("OH_GLOOM","GLOBAL",1)
          RevealAreaOnMap("ar9500")~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #22824 /* ~I shall defy banishment and return to the camp in secret. If you are successful, go directly to the mead hall and demand an audience with Wylfdene. Together, we shall expose him and put an end to his evil.~ [HJOLL060] */
  IF ~~ THEN REPLY #288 /* ~Farewell.~ */ DO ~SetGlobal("OH_GLOOM","GLOBAL",1)
          RevealAreaOnMap("ar9500")
          SetGlobal("Hjollder_Quest","GLOBAL",9)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("HJescape")
          AddJournalEntry(26329,QUEST)
          EraseJournalEntry(26295)
          EraseJournalEntry(34114)
          EraseJournalEntry(34118)
          EraseJournalEntry(26300)~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 49.2 53.2 58.1 75.1 79.2 81.0
  SAY #22825 /* ~Very well. I shall honor my word and return you to the town under the great tree.~ [HJOLL061] */
  IF ~  !Global("Hjollder_Quest","GLOBAL",11)~ THEN REPLY #8242 /* ~Thank you.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",1)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("BItoKU")~ EXIT
  IF ~  Global("Hjollder_Quest","GLOBAL",11)~ THEN REPLY #8242 /* ~Thank you.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",1)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("BCtoKU")~ EXIT
END

IF WEIGHT #1 ~  Global("Exp_Pause","GLOBAL",1)

~ THEN BEGIN 61 // from:
  SAY #22827 /* ~I have done as you asked. However, our quest is far from complete. I shall remain here until you are ready to return to the task of saving my people.~ [HJOLL062] */
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY #22828 /* ~We are ready to return to the north. Let us be off.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("KUtoBI")~ EXIT
  IF ~  GlobalGT("Hjollder_Quest","GLOBAL",10)~ THEN REPLY #22828 /* ~We are ready to return to the north. Let us be off.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("KUtoBC")~ EXIT
  IF ~~ THEN REPLY #22836 /* ~We'll be back when we're ready to go back. Farewell.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",2)~ EXIT
END

IF WEIGHT #2 ~  Global("Exp_Pause","GLOBAL",2)

~ THEN BEGIN 62 // from:
  SAY #22837 /* ~Welcome back, heroes. Are you ready to resume our quest?~ [HJOLL063] */
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",11)~ THEN REPLY #22848 /* ~Yes. Let us return to the north.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("KUtoBI")~ EXIT
  IF ~  GlobalGT("Hjollder_Quest","GLOBAL",10)~ THEN REPLY #22848 /* ~Yes. Let us return to the north.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("KUtoBC")~ EXIT
  IF ~~ THEN REPLY #22850 /* ~We are not ready to return just yet. Farewell.~ */ EXIT
END

IF WEIGHT #8 ~  GlobalGT("Hjollder_Quest","GLOBAL",6)
        GlobalLT("Hjollder_Quest","GLOBAL",9)
~ THEN BEGIN 63 // from:
  SAY #22855 /* ~We have little time. We must discover the truth behind Wylfdene's treachery before it is too late.~ [HJOLL064] */
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",8)~ THEN REPLY #22856 /* ~Very well. Tell us what needs to be done.~ */ GOTO 51
  IF ~  Global("Hjollder_Quest","GLOBAL",8)~ THEN REPLY #22857 /* ~Tell us again of this Gloomfrost Seer.~ */ GOTO 53
  IF ~  Global("Hjollder_Quest","GLOBAL",8)~ THEN REPLY #22858 /* ~Don't worry... we'll find this Seer and learn what we can.~ */ GOTO 58
  IF ~~ THEN REPLY #22811 /* ~On second thought... I think we've done enough for you and your people. Farewell.~ */ EXIT
END

IF WEIGHT #9 ~  Global("Hjollder_Quest","GLOBAL",9)
~ THEN BEGIN 64 // from:
  SAY #22860 /* ~It is good to see you again, friend. Take care... if we are discovered here together, our heads shall be mounted side by side before the entrance of Hengorot[Hen-gore-oh].~ [HJOLL065] */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #22863 /* ~I assume that your presence here means you have succeeded in your quest to find the Gloomfrost Seer. What have you learned?~ [HJOLL066] */
  IF ~  Global("Found_Seer","GLOBAL",0)~ THEN REPLY #22864 /* ~Actually, we were unable to locate the Seer.~ */ GOTO 66
  IF ~  Global("Found_Seer","GLOBAL",1)
        !PartyHasItem("mirror")
        !PartyHasItem("mirror2")~ THEN REPLY #22865 /* ~We found the Seer, but the crazy old hag wasn't very helpful. All she did was spout riddles.~ */ GOTO 67
  IF ~  Global("Found_Seer","GLOBAL",1)
        PartyHasItem("mirror")~ THEN REPLY #22866 /* ~We found the Seer and she gave us a mirror crafted of ice. She told us it would reveal the true form of Wylfdene's spirit.~ */ GOTO 68
  IF ~  Global("Found_Seer","GLOBAL",1)
        PartyHasItem("mirror2")~ THEN REPLY #22866 /* ~We found the Seer and she gave us a mirror crafted of ice. She told us it would reveal the true form of Wylfdene's spirit.~ */ GOTO 68
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #22867 /* ~This is grave news. Please... you must journey back to the Gloomfrost and find the Seer. Her wisdom is the only hope for my people—and those of the Ten Towns.~ [HJOLL067] */
  IF ~~ THEN REPLY #22868 /* ~Very well. We'll return when we've found her.~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.1
  SAY #22869 /* ~You must understand, the Seer lives between two worlds... ours and the realm of the spirits. Her words contain the knowledge we seek. You must journey back to the Gloomfrost and give ear to the meaning behind her riddles.~ [HJOLL068] */
  IF ~~ THEN REPLY #22870 /* ~Very well. We'll return when we know more.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.2 65.3
  SAY #22871 /* ~Tempos has smiled upon our quest. You must take this mirror to the mead hall and use it to expose Wylfdene before the council.~ [HJOLL069] */
  IF ~~ THEN REPLY #22872 /* ~Easier said than done. How are we to get past the guards outside?~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #22873 /* ~Here... take this chain. It is the tribal insignia you found in Wylfdene's tomb. Present it to Angaar[Ain-gar] at the entrance to the camp and demand an audience. He would not dare refuse the bearer of such a token.~ [HJOLL070] */
  IF ~~ THEN REPLY #22874 /* ~I hope you're right. Farewell.~ */ DO ~GiveItemCreate("Wylfins",LastTalkedToBy,1,0,0)
          SetGlobal("Hjollder_Quest","GLOBAL",10)
          AddJournalEntry(26333,QUEST)
          EraseJournalEntry(26329)~ EXIT
END

IF WEIGHT #10 ~  Global("Hjollder_Quest","GLOBAL",10)
~ THEN BEGIN 70 // from:
  SAY #22875 /* ~Why have you returned?[anxious, worried] We have little time... you must gain an audience with the council and present the mirror to Wylfdene.~ [HJOLL071] */
  IF ~~ THEN REPLY #22876 /* ~How do we get past the guards again?~ */ GOTO 71
  IF ~~ THEN REPLY #22877 /* ~We'll get right on it.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #22878 /* ~Speak with Angaar[Ain-gar]. He commands the guards at the entrance to the camp. Show him Wylfdene's insignia and he will grant you an audience with the council.~ [HJOLL072] */
  IF ~~ THEN REPLY #22879 /* ~Right. Thank you, Hjollder. Farewell.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 85 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",11)

~ THEN BEGIN 72 // from:
  SAY #22880 /* ~You have succeeded, my friends! The corrupt spirit has fled Wylfdene's body! Your heroic deeds shall forever be sung by my people.~ [HJOLL073] */
  IF ~~ THEN DO ~SetGlobal("Body_Count","GLOBAL",4)~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #22882 /* ~However, I'm afraid our journey is not at an end. This spirit... this malevolent soul of a great wyrm has fled the field, but it is still free to pursue its mission of terror and vengeance.~ [HJOLL074] */
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #22883 /* ~I fear that until it is hunted down and destroyed, the threat of its return will hang over the heads of my people like an evil cloud.~ [HJOLL075] */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #22884 /* ~I would ask you to once again take up arms against this ancient hate, so that my people and yours can finally be at peace.~ [HJOLL076] */
  IF ~~ THEN REPLY #22885 /* ~We'd like to help, but you said it yourself... the spirit has fled. How are we to know where?~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",12)~ GOTO 76
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22886 /* ~Sorry, but we've done our part. Now we wish to return to Kuldahar.~ */ GOTO 60
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #22887 /* ~I have learned that just two days ago, Wylfdene ordered a score of virgins to be taken by ship to an island upon the Sea of Moving Ice.~ [HJOLL077] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #22888 /* ~The island was once a sacred site where an elder tribe made sacrifices to their patron spirit, the Great Wyrm.~ [HJOLL078] */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 78 // from: 84.0
  SAY #22889 /* ~I believe that the spirit we routed today and the ancient spirit of the Great Wyrm are one and the same. That is why Wylfdene ordered such a sacrifice.~ [HJOLL079] */
  IF ~~ THEN REPLY #22890 /* ~So you think the spirit may have fled to this island?~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #22891 /* ~Yes. A ship stands ready to take you to the island. The warriors of the Tribe of the Gray Whale, our seafaring cousins to the west, are prepared to show you the way.~ [HJOLL080] */
  IF ~~ THEN REPLY #22892 /* ~Very well. We shall leave at once.~ */ GOTO 80
  IF ~~ THEN REPLY #22893 /* ~Actually... we're not up to the task just yet.~ */ GOTO 81
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)~ THEN REPLY #22811 /* ~On second thought... I think we've done enough for you and your people. Farewell.~ */ GOTO 60
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #22895 /* ~Good luck, my friends. May Tempos continue to show you favor upon the field of glory!~ [HJOLL081] */
  IF ~~ THEN REPLY #22896 /* ~Farewell, Hjollder.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",13)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("BCtoIL")
          AddJournalEntry(26331,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 81 // from: 79.1 82.1
  SAY #22897 /* ~I understand. Such a task is not to be taken lightly. Take what time you need to prepare yourselves. Return to me when you are ready and I shall see you to your ship.~ [HJOLL082] */
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)

~ THEN REPLY #22810 /* ~On second thought... we'd like to return to Kuldahar first.~ */ GOTO 60
  IF ~~ THEN REPLY #18109 /* ~Thank you. Farewell.~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 85 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",12)

~ THEN BEGIN 82 // from:
  SAY #22899 /* ~Everything is in order. Your ship stands ready to take you to the Isle of the Great Wyrm. Are you prepared to depart?~ [HJOLL083] */
  IF ~~ THEN REPLY #22900 /* ~We are ready. Let us be off.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",13)
          ClearAllActions()
          StartCutSceneMode()
          StartCutScene("BCtoIL")
          AddJournalEntry(26331,QUEST)~ EXIT
  IF ~~ THEN REPLY #22901 /* ~Not just yet. We still have preparations to make.~ */ GOTO 81
END

IF ~~ THEN BEGIN 83 // from: 7.2 25.4
  SAY #22905 /* ~Although I am certain you are the heroes of my vision, I fear you are not yet strong enough for the task at hand. Go forth and sharpen your skills upon the field of valor. When you've grown stronger, return here and we shall speak more.~ [HJOLL084] */
  IF ~~ THEN REPLY #6159 /* ~As you wish. Farewell.~ */ DO ~AddJournalEntry(26297,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 84 // from: 77.0
  SAY #22906 /* ~The ancient tribe died out long ago, and with them died the practice of sacrificing virgins to appease the Great Wyrm.~ [HJOLL085] */
  IF ~~ THEN GOTO 78
END

IF WEIGHT #11 ~  Global("Hjollder_Quest","GLOBAL",11)
Global("BC_Battle_Over","GLOBAL",0)~ THEN BEGIN 85 // from:
  SAY #22895 /* ~Good luck, my friends. May Tempos continue to show you favor upon the field of glory!~ [HJOLL081] */
  IF ~~ THEN EXIT
END
