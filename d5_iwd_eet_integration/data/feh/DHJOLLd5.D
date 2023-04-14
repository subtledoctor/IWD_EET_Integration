// creator  : /Users/bri/Desktop/BG/eet_3-23/NearInfinity.app/Contents/MacOS/NearInfinity.jar (v2.3-20220906)
// game     : /Users/bri/Desktop/BG/eet_3-23
// resource : D5HJOLL.dlg
// source   : Override/D5HJOLL.dlg
// dialog   : lang/en_US/dialog.tlk
// dialogF  : (none)

BEGIN ~D5HJOLL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
Global("Know_Hjollder","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #539366 /* ~By Tempos!  The vision speaks true.  You *are* the heroes from my dreams.~ [HJOLL001] */
  IF ~~ THEN REPLY #266841 /* ~Do I know you?~ */ DO ~SetGlobal("Know_Hjollder","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #263954 /* ~What are you talking about?~ */ DO ~SetGlobal("Know_Hjollder","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #539367 /* ~You must have us confused with some other heroes.  Farewell.~ */ DO ~SetGlobal("Know_Hjollder","GLOBAL",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #539368 /* ~Our paths have not crossed until this day.  I am Hjollder[Yole-dare], son to Hrethric[Reth-rick], elder and shaman to the Tribe of the Bear.~ [HJOLL002] */
  IF ~~ THEN REPLY #539369 /* ~Well met, Hjollder.  What's this business about dreams and visions?~ */ GOTO 2
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #539507 /* ~What's a tribesman doing here?~ */ GOTO 2
  IF ~  Global("Join_Posse","GLOBAL",0)
~ THEN REPLY #504593 /* ~What's a tribesman doing here in Lonelywood?~ */ GOTO 2
  IF ~~ THEN REPLY #539370 /* ~Shaman, eh?  That explains all this nonsense about visions.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 1.1 1.2 1.3 25.0
  SAY #539371 /* ~The vision is why I have come to this place.  Tempos has guided me to you.~ [HJOLL003] */
  IF ~~ THEN REPLY #500629 /* ~For what purpose?~ */ GOTO 3
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
!Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504596 /* ~If your god has guided you to us, then your need must be great indeed.~ */ GOTO 8
  IF ~~ THEN REPLY #539372 /* ~Well you found us... now Tempos can guide you elsewhere.  Farewell.~ */ GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 2.0 17.0 17.1
  SAY #539373 /* ~This I cannot say.  I know only that the storm of war darkens the skies of my homeland.  My people are gathering in numbers greater than any have seen for generations.  ~ [HJOLL004] */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #539374 /* ~A king, both new and old, has risen to lead the tribes against the Ten-Towns.  Already the first snows of winter bear the dark stains of spilt blood.~ [HJOLL005] */
  IF ~~ THEN REPLY #504600 /* ~I don't see what any of this has to do with us.~ */ GOTO 5
  IF ~~ THEN REPLY #504601 /* ~Tell me more of this new *and* old king.~ */ DO ~SetGlobal("Know_Wylf","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #539375 /* ~Speak plainly.  What do you want from us?~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0 10.1 12.3 16.1 16.2
  SAY #539376 /* ~You must understand.  I have read the signs.  Tempos will not favor either side in the coming battles.  Both my people and those of the towns shall be haunted by countless deaths without honor.~ [HJOLL006] */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #539377 /* ~I have cast my spirit into the nether realm in search of a way to prevent what must not be.  My vision quest led me here to find you.  *You* are the answer I seek.~ [HJOLL007] */
  IF ~~ THEN REPLY #539378 /* ~I see.  So what can we do to help?~ */ GOTO 7
  IF ~  Global("Know_Wylf","GLOBAL",1)
~ THEN REPLY #504606 /* ~Tell me again of this new *and* old king.~ */ GOTO 9
  IF ~  Global("Know_Wylf","GLOBAL",0)
~ THEN REPLY #504606 /* ~Tell me again of this new *and* old king.~ */ DO ~SetGlobal("Know_Wylf","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #539379 /* ~Sorry to disappoint you, but we have other plans.  Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 16.0 25.1
  SAY #539380 /* ~You must come to Hengorot[hen-gore-oh]... to the great Mead Hall where the tribes have gathered.  You alone can forestall the war between our peoples.~ [HJOLL008] */
  IF ~  Global("Join_Posse","GLOBAL",0)
~ THEN REPLY #539381 /* ~Very well.  We shall accompany you. ~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)
AddJournalEntry(539382,QUEST)
~ GOTO 18
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
XPGT(Player1,35999)
~ THEN REPLY #539381 /* ~Very well.  We shall accompany you. ~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)
AddJournalEntry(539383,QUEST)
~ GOTO 21
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
XPLT(Player1,36000)
~ THEN REPLY #539381 /* ~Very well.  We shall accompany you. ~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",2)
~ GOTO 83
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
Global("Hjollder_Quest","GLOBAL",0)
~ THEN REPLY #539384 /* ~Maybe some other time.  Farewell.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
Global("Hjollder_Quest","GLOBAL",1)
~ THEN REPLY #539384 /* ~Maybe some other time.  Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #539385 /* ~Yes.  The storm of war darkens the skies of my homeland.  My people are gathering in numbers greater than any have seen for generations.  ~ [HJOLL009] */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 4.1 6.1 6.2
  SAY #539386 /* ~Wylfdene[Wilf-dane] is his name.  He was a great warrior from an elder tribe who was slain in battle on the eve of last season.~ [HJOLL010] */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #539387 /* ~Now his body has returned from death's halls to lead my people once more... as king.  ~ [HJOLL011] */
  IF ~~ THEN REPLY #539388 /* ~He came back from the grave?  What kind of undead monster is this king of yours?~ */ GOTO 11
  IF ~~ THEN REPLY #504613 /* ~Interesting... but I don't see what any of this has to do with us.~ */ GOTO 5
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #539389 /* ~I've heard enough.  Go spin your yarns at the tavern if you like... we've got better things to do.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #539390 /* ~Wylfdene's flesh is but a vessel, a borrowed tool.  The spirit of the new king is much, much older than the form it now inhabits.~ [HJOLL012] */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #539391 /* ~It is said that the spirit of Jerrod governs his body.  It is this claim that has fueled the fires of vengeance among my people.~ [HJOLL013] */
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
GlobalGT("Jered_Stone","GLOBAL",0)
~ THEN REPLY #539392 /* ~Jerrod?  Isn't he the barbarian hero entombed beneath the temple in Easthaven?~ */ GOTO 13
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
Global("Jered_Stone","GLOBAL",0)
~ THEN REPLY #539393 /* ~Jerrod?  Who is he?~ */ GOTO 14
  IF ~  Global("Join_Posse","GLOBAL",0)
~ THEN REPLY #539394 /* ~Jerrod?  Isn't he the barbarian hero who was entombed beneath the temple in Easthaven?~ */ GOTO 13
  IF ~~ THEN REPLY #504620 /* ~Sounds like a problem... but not *our* problem.~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.2
  SAY #539395 /* ~[surprised]The same.  You know our history well.  ~ [HJOLL014] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #539396 /* ~Jerrod was our greatest hero.  Centuries ago, he united the tribes and led us to victory against invaders from the south.~ [HJOLL015] */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #504623 /* ~He died on the battlefield in the embrace of infernal magicks, bravely sacrificing his life to save his people.~ [HJOLL016] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.0 15.0
  SAY #504624 /* ~Now, after centuries of imprisonment, Jerrod's spirit is free and rallies the tribes once more in a common cause.~ [HJOLL017] */
  IF ~~ THEN REPLY #539378 /* ~I see.  So what can we do to help?~ */ GOTO 7
  IF ~~ THEN REPLY #539397 /* ~If this Jerrod was such a great hero, surely his cause must be just.  So why are you here?~ */ GOTO 5
  IF ~~ THEN REPLY #539398 /* ~The ghost of one of your ancestors is leading your people to war?  Forgive me if I don't believe you.~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 0.2 2.2
  SAY #539399 /* ~Wait... I beg you.  I have risked much to find you.  I am certain the vision spoke true.  Only *you* can help my people.~ [HJOLL018] */
  IF ~~ THEN REPLY #539400 /* ~You say a vision led you to us?  For what purpose?~ */ GOTO 3
  IF ~~ THEN REPLY #504629 /* ~What makes you think we can do anything to help your people?~ */ GOTO 3
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #539384 /* ~Maybe some other time.  Farewell.~ */ DO ~AddJournalEntry(539401,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.0 27.0
  SAY #539402 /* ~Though we journey towards the same destination, our paths are not one.  My place is at the side of my king.  Already I have been gone too long.~ [HJOLL019] */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #539403 /* ~From here, you must go alone.  The people of this town will know the way to the camp of my people.~ [HJOLL020] */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #539404 /* ~Travel swiftly and safely.  We shall meet again when you stand before the council in the great Mead Hall.~ [HJOLL021] */
  IF ~~ THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",4)
AddJournalEntry(539405,QUEST)
StartCutSceneMode()
StartCutSceneEx("HJescape",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 7.1 25.5
  SAY #539406 /* ~I am honored by your choice.  The journey is a long one, and our quest is urgent.  I shall summon the wind to carry us through the mountains and over the tundra.~ [HJOLL022] */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #539407 /* ~Know this... should you wish to return to this place, it is within my power to bring you back.  But walking upon the wind taxes one's spirit greatly.  ~ [HJOLL023] */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #539408 /* ~It may be days before I can make the journey again.  Now... are you prepared to depart?~ [HJOLL024] */
  IF ~~ THEN REPLY #539409 /* ~Yes.  Let us be off.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("KUtoLW",FALSE)
~ EXIT
  IF ~~ THEN REPLY #539410 /* ~Not yet.  We have some unfinished business to attend to first. ~ */ DO ~SetGlobal("Hjollder_Delay","GLOBAL",1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.6
  SAY #539411 /* ~Very well.  I shall remain here until you return.  Mark well the passage of time.  The storm draws closer with each passing moment.~ [HJOLL025] */
  IF ~~ THEN REPLY #271362 /* ~Farewell.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 62 61 even though they appear after this state */
~  GlobalLT("Hjollder_Quest","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #539412 /* ~You have returned.  Again it is as the vision foretold.~ [HJOLL026] */
  IF ~  Global("Hjollder_Quest","GLOBAL",0)
~ THEN REPLY #504640 /* ~What is this vision you keep harping on about?~ */ GOTO 2
  IF ~  Global("Hjollder_Quest","GLOBAL",1)
~ THEN REPLY #539413 /* ~What is it with you and this vision?  What do you want from us?~ */ GOTO 7
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",2)
~ THEN REPLY #539414 /* ~Right.  We must be going now.  Farewell.~ */ EXIT
  IF ~  Global("Hjollder_Delay","GLOBAL",1)
Global("Hjollder_Quest","GLOBAL",2)
XPGT(Player1,35999)
~ THEN REPLY #539415 /* ~We are ready to accompany you now.  Let us be off.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("KUtoLW",FALSE)
~ EXIT
  IF ~  Global("Hjollder_Quest","GLOBAL",2)
XPLT(Player1,36000)
~ THEN REPLY #539415 /* ~We are ready to accompany you now.  Let us be off.~ */ GOTO 83
  IF ~  Global("Hjollder_Delay","GLOBAL",0)
Global("Hjollder_Quest","GLOBAL",2)
XPGT(Player1,35999)
~ THEN REPLY #539415 /* ~We are ready to accompany you now.  Let us be off.~ */ GOTO 21
  IF ~  Global("Hjollder_Quest","GLOBAL",2)
~ THEN REPLY #539416 /* ~Sorry.  We are still not ready to leave just yet.~ */ GOTO 24
END

IF WEIGHT #4 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #539417 /* ~We have arrived outside the settlement your people call Lonelywood.  Of the Ten-Towns, it is the nearest to my people's homeland and will no doubt fall first if my people heed Wylfdene's call to war.~ [HJOLL027] */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #504646 /* ~Now I must leave you, for I am not welcome among the homes of these southerners.~ [HJOLL028] */
  IF ~~ THEN REPLY #539418 /* ~You're leaving?  I thought you were supposed to take us to this Mead Hall of yours.~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from:
  SAY #539419 /* ~Stay your hand, mighty Wylfdene.  These strangers bear our people no malice - upon my oath.~ [HJOLL029] */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #504649 /* ~I know this, for it was I who bade them to appear before this council.~ [HJOLL030] */
  IF ~~ THEN EXTERN ~DWYLF~ 41
END

IF ~~ THEN BEGIN 30 // from:
  SAY #539420 /* ~Their coming was foretold by a vision.  I have been to the other side, great king.  The spirits have shown me these heroes and other images that speak the will of Tempos.~ [HJOLL031] */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #504651 /* ~If Tempos has called these strangers to us, then surely we cannot dishonor ourselves by slaying them within the hallowed halls of Hengorot.~ [HJOLL032] */
  IF ~~ THEN EXTERN ~DWYLF~ 42
END

IF ~~ THEN BEGIN 32 // from:
  SAY #539421 /* ~I... I do not know.  The vision was unclear as to what purpose they must serve, but it must-~ [HJOLL033] */
  IF ~~ THEN DO ~SetGlobal("Body_Count","GLOBAL",1)
~ EXTERN ~DWYLF~ 43
END

IF WEIGHT #5 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #539422 /* ~What's this?  More spirits come to torment my treasonous heart?  Be gone, vengeful ghosts!  Allow me to endure my shame in peace.~ [HJOLL034] */
  IF ~~ THEN REPLY #539423 /* ~We're no ghosts, Hjollder.  We're flesh and blood like you.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
SetGlobal("Body_Count","GLOBAL",2)
AddXP2DA("ID1EX12A")
DisplayStringNoNameDlg(LastTalkedToBy,504655)
~ GOTO 34
  IF ~~ THEN REPLY #539424 /* ~As you wish.  Farewell.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",5)
SetGlobal("Body_Count","GLOBAL",2)
AddXP2DA("ID1EX12A")
DisplayStringNoNameDlg(LastTalkedToBy,504655)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #539425 /* ~How can this be?  Wylfdene expelled you from the camp.  Your quest was over before it began.  Why have you come to this place?~ [HJOLL035] */
  IF ~~ THEN REPLY #504657 /* ~We've come to rescue you.~ */ GOTO 35
  IF ~~ THEN REPLY #504658 /* ~Wylfdene did more than just expel us... he tried to have us killed!~ */ GOTO 42
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #539426 /* ~That's right... our quest is over.  We'd like to return to Kuldahar now.~ */ GOTO 43
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #539427 /* ~Rescue me?  You do not understand.  There shall be no rescue for me... only redemption found in death's embrace.  I belong here and shall remain until my spirit has been cleansed for the crossing.~ [HJOLL036] */
  IF ~~ THEN REPLY #504661 /* ~Are you saying you've decided to just give up and die here?~ */ GOTO 36
  IF ~~ THEN REPLY #539428 /* ~Look, we've come a long way to find you.  We're not about to just give up and go home.~ */ GOTO 36
  IF ~~ THEN REPLY #539429 /* ~So be it.  Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 42.0 42.1 43.0 43.1
  SAY #539430 /* ~My fate has been decreed by Wylfdene.  An honest man accepts all judgments of his chosen king.~ [HJOLL037] */
  IF ~  Global("Know_Soul","GLOBAL",1)
~ THEN REPLY #504665 /* ~What if we were to tell you Wylfdene isn't who he claims to be?~ */ GOTO 37
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
!Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #539431 /* ~You are indeed honest, but my faith has allowed me to see into the heart of your king.  The touch of evil is upon him.~ */ GOTO 45
  IF ~  Global("Know_Soul","GLOBAL",0)
OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504667 /* ~There must be something we can do.~ */ GOTO 44
  IF ~~ THEN REPLY #539429 /* ~So be it.  Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 46.0
  SAY #539432 /* ~What?  The king is false?  How is this known to you?~ [HJOLL038] */
  IF ~~ THEN REPLY #539433 /* ~We have spoken with the spirits of this island.  They have told us that the spirit that inhabits Wylfdene's body is corrupted by evil.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #539434 /* ~Yes... I see.  It is this corruption that has placed the spirits in turmoil.  These visions I have had of late are the manifestations of their anguish.~ [HJOLL039] */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #539435 /* ~However, I fear I have risked too much already based upon the word of spirits.  If I am to act against my king, I must have proof.~ [HJOLL040] */
  IF ~~ THEN REPLY #504672 /* ~Where can we find such proof?~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0 45.0
  SAY #504673 /* ~If the soul that inhabits Wylfdene's body is indeed corrupt, then perhaps it may have left signs of its passing within the tomb of the dead king.~ [HJOLL041] */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #539436 /* ~Seek your proof within the barrows of this island.  Should you discover anything of importance, return it here to me and we shall discuss our quest further.~ [HJOLL042] */
  IF ~  PartyHasItem("wylfins")
~ THEN REPLY #539437 /* ~We found this amulet within Wylfdene's tomb.  It appears to have been intentionally defaced.~ */ DO ~TakePartyItem("wylfins")
DestroyItem("wylfins")
SetGlobal("Hjollder_Quest","GLOBAL",7)
AddXP2DA("ID1EX12H")
DisplayStringNoNameDlg(LastTalkedToBy,504676)
AddJournalEntry(539438,QUEST)
~ GOTO 48
  IF ~  !PartyHasItem("wylfins")
~ THEN REPLY #539439 /* ~Very well.  Farewell for now, Hjollder.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",6)
AddJournalEntry(539440,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 34.1
  SAY #539441 /* ~Please... try not to judge my people so harshly.  It was my foolishness that put your lives in danger.  It is only right that I remain exiled here... until death frees me.~ [HJOLL043] */
  IF ~~ THEN REPLY #504661 /* ~Are you saying you've decided to just give up and die here?~ */ GOTO 36
  IF ~~ THEN REPLY #539428 /* ~Look, we've come a long way to find you.  We're not about to just give up and go home.~ */ GOTO 36
  IF ~~ THEN REPLY #539429 /* ~So be it.  Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.2 46.3
  SAY #539442 /* ~I'm afraid that is not possible.  I have been banished to this place for my treason.  Here I must remain until death's shadow falls upon me.~ [HJOLL044] */
  IF ~~ THEN REPLY #504661 /* ~Are you saying you've decided to just give up and die here?~ */ GOTO 36
  IF ~~ THEN REPLY #539428 /* ~Look, we've come a long way to find you.  We're not about to just give up and go home.~ */ GOTO 36
  IF ~~ THEN REPLY #539429 /* ~So be it.  Farewell, Hjollder.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 46.2
  SAY #539443 /* ~I'm afraid not.  I have been banished by law.  No longer am I a shaman of the Tribe of the Bear.  I am even forbidden to commune with the spirits until my own is ready to join them.~ [HJOLL045] */
  IF ~~ THEN REPLY #539444 /* ~Then we shall speak with the spirits of this island.  Perhaps they will tell us what to do.  Farewell.~ */ DO ~AddJournalEntry(539445,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.1 46.1
  SAY #539446 /* ~I suspect your vision to be true.  However, I have already risked too much on visions.  If I am to act against my king, I must have proof.~ [HJOLL046] */
  IF ~~ THEN REPLY #504672 /* ~Where can we find such proof?~ */ GOTO 40
END

IF WEIGHT #6 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",5)
~ THEN BEGIN 46 // from:
  SAY #539447 /* ~You should not remain on this island.  The shame of this banishment is mine alone to bear.  So my king has decreed.~ [HJOLL047] */
  IF ~  Global("Know_Soul","GLOBAL",1)
~ THEN REPLY #504684 /* ~What if we were to tell you that Wylfdene isn't who he claims to be?~ */ GOTO 37
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
!Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #539431 /* ~You are indeed honest, but my faith has allowed me to see into the heart of your king.  The touch of evil is upon him.~ */ GOTO 45
  IF ~  Global("Know_Soul","GLOBAL",0)
OR(2)
!Class(LastTalkedToBy,PALADIN_ALL)
Kit(LastTalkedToBy,Blackguard)
~ THEN REPLY #504667 /* ~There must be something we can do.~ */ GOTO 44
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #504685 /* ~We'd like to return to Kuldahar now.~ */ GOTO 43
  IF ~~ THEN REPLY #539429 /* ~So be it.  Farewell, Hjollder.~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 62 61 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",6)
~ THEN BEGIN 47 // from:
  SAY #539448 /* ~You have returned.  Have you found any clues within the barrows?~ [HJOLL048] */
  IF ~  PartyHasItem("wylfins")
~ THEN REPLY #539437 /* ~We found this amulet within Wylfdene's tomb.  It appears to have been intentionally defaced.~ */ DO ~TakePartyItem("wylfins")
DestroyItem("wylfins")
SetGlobal("Hjollder_Quest","GLOBAL",7)
AddXP2DA("ID1EX12H")
DisplayStringNoNameDlg(LastTalkedToBy,504676)
AddJournalEntry(539438,QUEST)
~ GOTO 48
  IF ~  !PartyHasItem("wylfins")
~ THEN REPLY #539449 /* ~Not yet... we're still looking.  Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #539450 /* ~This is Wylfdene's tribal insignia.  Such chains are worn by the kings of my people and are considered the most precious of worldly possessions.~ [HJOLL049] */
  IF ~~ THEN REPLY #321342 /* ~So?~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #539451 /* ~No true tribesman would dare to deface so sacred an object.  If Wylfdene is responsible for this desecration, then it is *not* the spirit of Jerrod that now inhabits his body.~ [HJOLL050] */
  IF ~~ THEN REPLY #504690 /* ~If not Jerrod, then who?~ */ GOTO 50
  IF ~~ THEN REPLY #539452 /* ~I see.  What do we do now?~ */ GOTO 51
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #504692 /* ~We have provided you with the proof you needed... now we would like to return to Kuldahar.~ */ GOTO 60
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #539453 /* ~This I do not know.  Even in my visions, the face of the king is obscured... almost as if my vision is opposed.~ [HJOLL051] */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.0 63.0
  SAY #539454 /* ~There is one who might help us in our quest.  If legend holds true, she may be able to see this soul for what it truly is. ~ [HJOLL052] */
  IF ~~ THEN REPLY #504695 /* ~Who is this person you speak of?~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #539455 /* ~She is known as the Gloomfrost Seer.  She was once a powerful channeler of spirits that lived among the Tribe of the Elk. ~ [HJOLL053] */
  IF ~~ THEN DO ~SetGlobal("Hjollder_Quest","GLOBAL",8)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 63.1
  SAY #539456 /* ~The legend says that her gift of sight was so great it turned her eyes to dust.  It is said she fled north, to dwell within the darkness of the Gloomfrost.~ [HJOLL054] */
  IF ~~ THEN REPLY #504698 /* ~You think this woman can help?~ */ GOTO 54
  IF ~~ THEN REPLY #504699 /* ~What is the Gloomfrost?~ */ GOTO 55
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #504700 /* ~On second thought... we'd like to return to Kuldahar first.~ */ DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
RevealAreaOnMap("ID9500")
~ GOTO 60
  IF ~~ THEN REPLY #539457 /* ~On second thought... I think we've done enough for you and your people.  Farewell.~ */ DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
RevealAreaOnMap("ID9500")
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #539458 /* ~The Gloomfrost Seer sees many things that are kept from the eyes of mortals.  If she still lives, she may be the *only* help for us now.~ [HJOLL055] */
  IF ~~ THEN REPLY #504703 /* ~What exactly is the Gloomfrost?~ */ GOTO 55
  IF ~~ THEN REPLY #504704 /* ~So where can we find this witch?~ */ GOTO 55
  IF ~~ THEN REPLY #539457 /* ~On second thought... I think we've done enough for you and your people.  Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0 54.1
  SAY #539459 /* ~The Gloomfrost lies far to the northeast, beyond the Reghed Glacier.  It is an ancient place, as old as the world itself.~ [HJOLL056] */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #504706 /* ~The tales of my people say that the Gloomfrost marks the place where the sun was expelled from the womb of Toril when she was still a young mother.~ [HJOLL057] */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #539460 /* ~It is said that the heat of the infant sun scarred the glacier as it fled to the sky, turning the ice black as night and casting the surrounding land into darkness.  ~ [HJOLL058] */
  IF ~~ THEN REPLY #539461 /* ~Sounds like a cheerful place.  How do we find it?~ */ GOTO 58
  IF ~~ THEN REPLY #539457 /* ~On second thought... I think we've done enough for you and your people.  Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 63.2
  SAY #539462 /* ~I shall mark the way upon your map.  Make haste in your journey, but beware... the guardians of the Gloomfrost protect the Seer from the intrusions of man.  Only those who prove themselves worthy shall be granted her wisdom.~ [HJOLL059] */
  IF ~~ THEN REPLY #539463 /* ~Very well.  We'll make for the Gloomfrost without delay.~ */ DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
RevealAreaOnMap("ID9500")
SetGlobal("Hjollder_Quest","GLOBAL",9)
AddJournalEntry(539464,QUEST)
~ GOTO 59
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #504700 /* ~On second thought... we'd like to return to Kuldahar first.~ */ DO ~SetGlobal("ID9500_REVEAED","GLOBAL",1)
RevealAreaOnMap("ID9500")
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #539465 /* ~I shall defy banishment and return to the camp in secret.  If you are successful, go directly to the Mead Hall and demand an audience with Wylfdene.  Together, we shall expose him and put an end to his evil.~ [HJOLL060] */
  IF ~~ THEN REPLY #271362 /* ~Farewell.~ */ DO ~AddJournalEntry(528872,QUEST)
StartCutSceneMode()
StartCutSceneEx("HJescape",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 49.2 53.2 58.1 75.1 79.2 81.0
  SAY #539466 /* ~Very well.  I shall honor my word and return you to the town under the great tree.  ~ [HJOLL061] */
  IF ~  !Global("Hjollder_Quest","GLOBAL",11)
~ THEN REPLY #260226 /* ~Thank you.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("BItoKU",FALSE)
~ EXIT
  IF ~  Global("Hjollder_Quest","GLOBAL",11)
~ THEN REPLY #260226 /* ~Thank you.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("BCtoKU",FALSE)
~ EXIT
END

IF WEIGHT #1 ~  Global("Exp_Pause","GLOBAL",1)
~ THEN BEGIN 61 // from:
  SAY #539467 /* ~I have done as you asked.  However, our quest is far from complete.  I shall remain here until you are ready to return to the task of saving my people.~ [HJOLL062] */
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",11)
~ THEN REPLY #539468 /* ~We are ready to return to the north.  Let us be off.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
StartCutSceneMode()
StartCutSceneEx("KUtoBI",FALSE)
~ EXIT
  IF ~  GlobalGT("Hjollder_Quest","GLOBAL",10)
~ THEN REPLY #539468 /* ~We are ready to return to the north.  Let us be off.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
StartCutSceneMode()
StartCutSceneEx("KUtoBC",FALSE)
~ EXIT
  IF ~~ THEN REPLY #539469 /* ~We'll be back when we're ready to go back.  Farewell.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",2)
~ EXIT
END

IF WEIGHT #2 ~  Global("Exp_Pause","GLOBAL",2)
~ THEN BEGIN 62 // from:
  SAY #539470 /* ~Welcome back, heroes.  Are you ready to resume our quest?~ [HJOLL063] */
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",11)
~ THEN REPLY #539471 /* ~Yes.  Let us return to the north.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
StartCutSceneMode()
StartCutSceneEx("KUtoBI",FALSE)
~ EXIT
  IF ~  GlobalGT("Hjollder_Quest","GLOBAL",10)
~ THEN REPLY #539471 /* ~Yes.  Let us return to the north.~ */ DO ~SetGlobal("Exp_Pause","GLOBAL",0)
StartCutSceneMode()
StartCutSceneEx("KUtoBC",FALSE)
~ EXIT
  IF ~~ THEN REPLY #539472 /* ~We are not ready to return just yet.  Farewell.~ */ EXIT
END

IF WEIGHT #8 ~  GlobalGT("Hjollder_Quest","GLOBAL",6)
GlobalLT("Hjollder_Quest","GLOBAL",9)
~ THEN BEGIN 63 // from:
  SAY #539473 /* ~We have little time.  We must discover the truth behind Wylfdene's treachery before it is too late.~ [HJOLL064] */
  IF ~  GlobalLT("Hjollder_Quest","GLOBAL",8)
~ THEN REPLY #539474 /* ~Very well.  Tell us what needs to be done.~ */ GOTO 51
  IF ~  Global("Hjollder_Quest","GLOBAL",8)
~ THEN REPLY #504721 /* ~Tell us again of this Gloomfrost Seer.~ */ GOTO 53
  IF ~  Global("Hjollder_Quest","GLOBAL",8)
~ THEN REPLY #504722 /* ~Don't worry... we'll find this Seer and learn what we can.~ */ GOTO 58
  IF ~~ THEN REPLY #539457 /* ~On second thought... I think we've done enough for you and your people.  Farewell.~ */ EXIT
END

IF WEIGHT #9 ~  Global("Hjollder_Quest","GLOBAL",9)
~ THEN BEGIN 64 // from:
  SAY #539475 /* ~It is good to see you again, friend.  Take care... if we are discovered here together, our heads shall be mounted side by side before the entrance of Hengorot[Hen-gore-oh].~ [HJOLL065] */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #539476 /* ~I assume that your presence here means you have succeeded in your quest to find the Gloomfrost Seer.  What have you learned?~ [HJOLL066] */
  IF ~  Global("Found_Seer","GLOBAL",0)
~ THEN REPLY #504725 /* ~Actually, we were unable to locate the Seer.~ */ GOTO 66
  IF ~  Global("Found_Seer","GLOBAL",1)
!PartyHasItem("mirror")
!PartyHasItem("mirror2")
~ THEN REPLY #539477 /* ~We found the Seer, but the crazy old hag wasn't very helpful.  All she did was spout riddles.~ */ GOTO 67
  IF ~  Global("Found_Seer","GLOBAL",1)
PartyHasItem("mirror")
~ THEN REPLY #539478 /* ~We found the Seer and she gave us a mirror crafted of ice.  She told us it would reveal the true form of Wylfdene's spirit.~ */ GOTO 68
  IF ~  Global("Found_Seer","GLOBAL",1)
PartyHasItem("mirror2")
~ THEN REPLY #539478 /* ~We found the Seer and she gave us a mirror crafted of ice.  She told us it would reveal the true form of Wylfdene's spirit.~ */ GOTO 68
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #539479 /* ~This is grave news.  Please... you must journey back to the Gloomfrost and find the Seer.  Her wisdom is the only hope for my people - and those of the Ten-Towns.~ [HJOLL067] */
  IF ~~ THEN REPLY #539480 /* ~Very well.  We'll return when we've found her.~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.1
  SAY #539481 /* ~You must understand, the Seer lives between two worlds... ours and the realm of the spirits.  Her words contain the knowledge we seek.  You must journey back to the Gloomfrost and give ear to the meaning behind her riddles.~ [HJOLL068] */
  IF ~~ THEN REPLY #539482 /* ~Very well.  We'll return when we know more.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.2 65.3
  SAY #539483 /* ~Tempos has smiled upon our quest.  You must take this mirror to the Mead Hall and use it to expose Wylfdene before the council.~ [HJOLL069] */
  IF ~~ THEN REPLY #539484 /* ~Easier said than done.  How are we to get past the guards outside?~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #539485 /* ~Here... take this chain.  It is the tribal insignia you found in Wylfdene's tomb.  Present it to Angaar[Ain-gar] at the entrance to the camp and demand an audience.  He would not dare refuse the bearer of such a token.~ [HJOLL070] */
  IF ~~ THEN REPLY #539486 /* ~I hope you're right.  Farewell.~ */ DO ~GiveItemCreate("Wylfins",LastTalkedToBy,1,0,0)
SetGlobal("Hjollder_Quest","GLOBAL",10)
AddJournalEntry(539487,QUEST)
~ EXIT
END

IF WEIGHT #10 ~  Global("Hjollder_Quest","GLOBAL",10)
~ THEN BEGIN 70 // from:
  SAY #539488 /* ~Why have you returned?[anxious, worried]  We have little time... you must gain an audience with the council and present the mirror to Wylfdene.~ [HJOLL071] */
  IF ~~ THEN REPLY #504736 /* ~How do we get past the guards again?~ */ GOTO 71
  IF ~~ THEN REPLY #504737 /* ~We'll get right on it.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #539489 /* ~Speak with Angaar[Ain-gar].  He commands the guards at the entrance to the camp.  Show him Wylfdene's insignia and he will grant you an audience with the council.~ [HJOLL072] */
  IF ~~ THEN REPLY #539490 /* ~Right.  Thank you, Hjollder.  Farewell.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 85 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",11)
~ THEN BEGIN 72 // from:
  SAY #539491 /* ~You have succeeded, my friends!  The corrupt spirit has fled Wylfdene's body!  Your heroic deeds shall forever be sung by my people.~ [HJOLL073] */
  IF ~~ THEN DO ~SetGlobal("Body_Count","GLOBAL",4)
~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #539492 /* ~However, I'm afraid our journey is not at an end.  This spirit... this malevolent soul of a great wyrm has fled the field, but it is still free to pursue its mission of terror and vengeance.~ [HJOLL074] */
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #504742 /* ~I fear that until it is hunted down and destroyed, the threat of its return will hang over the heads of my people like an evil cloud.~ [HJOLL075] */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #504743 /* ~I would ask you to once again take up arms against this ancient hate, so that my people and yours can finally be at peace.~ [HJOLL076] */
  IF ~~ THEN REPLY #539493 /* ~We'd like to help, but you said it yourself... the spirit has fled.  How are we to know where?~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",12)
~ GOTO 76
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #539494 /* ~Sorry, but we've done our part.  Now we wish to return to Kuldahar.~ */ GOTO 60
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #504746 /* ~I have learned that just two days ago, Wylfdene ordered a score of virgins to be taken by ship to an island upon the Sea of Moving Ice.~ [HJOLL077] */
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #539495 /* ~The island was once a sacred site where an elder tribe made sacrifices to their patron spirit, the Great Wyrm.  ~ [HJOLL078] */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 78 // from: 84.0
  SAY #539496 /* ~I believe that the spirit we routed today and the ancient spirit of the Great Wyrm are one and the same.  That is why Wylfdene ordered such a sacrifice.~ [HJOLL079] */
  IF ~~ THEN REPLY #504749 /* ~So you think the spirit may have fled to this island?~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #539497 /* ~Yes.  A ship stands ready to take you to the island.  The warriors of the Tribe of the Grey Whale, our sea-faring cousins to the west, are prepared to show you the way.  ~ [HJOLL080] */
  IF ~~ THEN REPLY #539498 /* ~Very well.  We shall leave at once.~ */ GOTO 80
  IF ~~ THEN REPLY #504752 /* ~Actually... we're not up to the task just yet.~ */ GOTO 81
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #539457 /* ~On second thought... I think we've done enough for you and your people.  Farewell.~ */ GOTO 60
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #539499 /* ~Good luck, my friends.  May Tempos continue to show you favor upon the field of glory!~ [HJOLL081] */
  IF ~~ THEN REPLY #504754 /* ~Farewell, Hjollder.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",13)
AddJournalEntry(539500,QUEST)
StartCutSceneMode()
StartCutSceneEx("BCtoIL",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 81 // from: 79.1 82.1
  SAY #539501 /* ~I understand.  Such a task is not to be taken lightly.  Take what time you need to prepare yourselves.  Return to me when you are ready and I shall see you to your ship.~ [HJOLL082] */
  IF ~  GlobalGT("Join_Posse","GLOBAL",0)
~ THEN REPLY #504700 /* ~On second thought... we'd like to return to Kuldahar first.~ */ GOTO 60
  IF ~~ THEN REPLY #510623 /* ~Thank you.  Farewell.~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 85 even though they appear after this state */
~  Global("Hjollder_Quest","GLOBAL",12)
~ THEN BEGIN 82 // from:
  SAY #539502 /* ~Everything is in order.  Your ship stands ready to take you to the Isle of the Great Wyrm.  Are you prepared to depart?~ [HJOLL083] */
  IF ~~ THEN REPLY #539503 /* ~We are ready.  Let us be off.~ */ DO ~SetGlobal("Hjollder_Quest","GLOBAL",13)
AddJournalEntry(539500,QUEST)
StartCutSceneMode()
StartCutSceneEx("BCtoIL",FALSE)
~ EXIT
  IF ~~ THEN REPLY #539504 /* ~Not just yet.  We still have preparations to make.~ */ GOTO 81
END

IF ~~ THEN BEGIN 83 // from: 7.2 25.4
  SAY #539505 /* ~Although I am certain you are the heroes of my vision, I fear you are not yet strong enough for the task at hand.  Go forth and sharpen your skills upon the field of valor.  When you've grown stronger, return here and we shall speak more.~ [HJOLL084] */
  IF ~~ THEN REPLY #539424 /* ~As you wish.  Farewell.~ */ DO ~AddJournalEntry(539506,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 84 // from: 77.0
  SAY #504760 /* ~The ancient tribe died out long ago, and with them died the practice of sacrificing virgins to appease the Great Wyrm.~ [HJOLL085] */
  IF ~~ THEN GOTO 78
END

IF WEIGHT #11 ~  Global("Hjollder_Quest","GLOBAL",11)
Global("BC_Battle_Over","GLOBAL",0)
~ THEN BEGIN 85 // from:
  SAY #539499 /* ~Good luck, my friends.  May Tempos continue to show you favor upon the field of glory!~ [HJOLL081] */
  IF ~~ THEN EXIT
END
