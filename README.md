# IWD EET Integration

SubtleDoctor's IWD EET Integration

## Version

Version 0.12

## Overview

This mod is designed to work with tipun's IWD_EET mods. There are three such mods at the moment:

-- IWD1_EET
-- IWD2_EET
-- Icewind_EET (which helps integrate some of the content of IWD1 and IWD2)

As of now, most of the components of this mod *require* all of IWD1_EET, IWD2_EET, *and* Icewind_EET to be installed first. Because most components of this mod deal with the content added by his IWD1 and IWD2 mods. Notably, tipun's IWD1 and IWD2 mods can only be installed on a game that already has EET installed. So the requirements for this mod to work are rather involved!

-- EET
-- IWD1_EET
-- IWD2_EET
-- Icewind_EET
-- [this mod]

Two components of this mod specifically relate to IWD's Heart of Winter content; these two components can work with tipun's HoW_in_EET mod in place of the IWD1 and IWD2 mods.
 
## Features

COMPONENT 100: Add IWD Campaigns to the EET Menu

This component adds IWD1 and IWD2 to the EET 'Campaigns' menu, so that you can play each of those campaigns as a distinct game.

NOTE: combined with components 130 and 135 (see below), this makes the IWD2 game playable on its own, with the BG2EE AD&D 2nd Edition ruleset. It also makes IWD2 playable on platforms where it was heretofore unavailable, like on iOS, and pretty much anywhere you can play a modded EET game!

NOTE ALSO: tipun's mods tune the IWD1 content to be played in between BG1 and SoD, and tune the IWD2 content to be played in the late part of SoA. So if you play these campaigns with level 1 parties, various aspects of the experience will be out of whack. The following components are designed to address this.

COMPONENT 110: Adjust IWD1 XP for Full Campaign

This component alters the XP rewards you get along the way in the IWD campaign to more or less match those in the base IWDEE game. This is to provide a batter experience if you play the campaign from level 1, from the EET main menu. 

NOTE: these XP rewards are *not* tuned for playing IWD content in the midst of an EET game. If you play the content in late BG1 as tipun designed, it will vastly inflate your party's XP total, throwing off balance of for the rest of the game. This is really designed to support component 100; playing the game as its own campaign or inside an EET game is basically an either/or proposition.

COMPONENT 115: Adjust IWD1 Creature Stats for Full Campaign

With tipun's IWD1_EET mod, the IWD1 enemies are tuned for ~8th level parties. Those in the early part of IWD will be seriously boosted combat stats, and the gameplay experience will be unbalanced. This component reduces enemy stats in the early part of IWD1 to be more appropriate for a party starting a new campaign at level 1. They are a bit stronger than in IWDEE, but still manageable for low-level IWD parties.

NOTE: as with component 110, this is designed to support component 100 and playing the IWD1 campaign fresh from level 1. If you install this and then play IWD in an EET game, at the end of BG1, you will find these enemies to be quite easy.

COMPONENT 130: Adjust IWD2 XP for Full Campaign

Like component 110, this component modifies the XP awards granted throughout the IWD2 game to be appropriate for a party playing that campaign as a game unto itself. This was a bit difficult to configure; tipun's version has XP awards designed for a late-BG2 party, and the original IWD2 game uses 3rd Edition D&D which has quite different XP tables. I *think* I set these values such that you can reach about 20th level in the course of playing the IWD2 campaign; but I have not yet played it through and it still needs testing and fine-tuning.

NOTE: here again, this is designed for playing the IWD2 campaign from level 1. If you play it inside an EET game this will greatly inflate your party's XP total. 

COMPONENT 135: Adjust IWD2 Creature Stats for Full Campaign

Like component 115, this component tunes the IWD2 creature stats to be appropriate for a party starting in Targos at level 1. Tipun's version is tuned for parties nearing TOB; this component basically sets creature stats to match those in the base IWD2 game.

NOTE: one more time, this will significantly change the experience if you play the content within an EET game - the IWD2 enemies will be extremely underpowered relative to a late-SoA party.

COMPONENT 150: Add HoW access to BG2

Tipun's HoW_in_EET mod put Hjollder in Ulgoth's Beard and has you play the HoW quest in late BG1; his IWD1_EET mod leaves Hjollder in Kuldahar and lets you play the HoW quest normally inside the IWD1 campaign.

This component puts Hjollder in the Bridge District of Athkatla, since in my play experience the HoW quest fits best among the various BG2 quests available before you go to Spellhold. This can play out a few ways, depending on whether and where you have met Hjollder before getting to Athkatla.

If you have HoW_in_EET installed, Hjollder will still be in Ulgoth's Beard, giving you the opportunity to play the HoW content earlier. If you do that, then Hjollder will *not* be in Athkatla later. However, if you ignore Hjollder in BG1, then you will be able to meet him and do the quest later on, in early SoA. This way, when you play this content is up to you.

If you have IWD1_EET installed, Hjollder will still be in Kuldahar. If you play the IWD1 campaign late in BG1, then you can do the HoW quests normally in the course of that. However, if you play IWD1 and ignore Hjollder in Kuldahar, or if you install component 100 here and do *not* play the IWD1 campaign in your EET game, then Hjollder will be in Athkatla during SoA and you will be able to do the HoW quest then.

(I hope that is clear!)

NOTE: this component has so far only been fully tested with tipun's HoW_in_EET mod. It may need some fine-tuning to work fully with the IWD1_EET mod.

COMPONENT 155: Remove Overpowered Items from HoW

This small component simply removes three items from HoW: Blood Iron, Young Rage, and Svian's Club. These weapons are incredibly powerful - +4 and +5 - and are available for free in a relatively easy area. These are TOB-level weapons that you can get at the beginning of BG2, or even before SoD. This component simply deletes them from the area.

COMPONENT 160: Add IWD1 Easter Egg Content to BG2

This component is a bit of a lark. It adds access to various IWD areas - currently, Dragon's Eye and Severed Hand - to the SoA campaign as part of a small-ish quest. Sort of. The content is completely optional, and is actually a bit difficult to find. But if you want more quests and encounters in your EET game, maybe you will enjoy this. 

This involves a bit of a historical retcon, of course. The Dragon's Eye areas are not part of anything called "Dragon's Eye," but just some caves you stumble into in the area around Athatkla. (I will say no more to avoid spoiling its discovery.) The elven Hand of the Seldarine fortress, on the other hand (now nicknamed the Severed Hand), requires a bit more retconning. This fortress is entirely a creation of the IWD game - there is no Forgotten Realms lore about it outside IWD. So on the assumption that in an EET game, for your party, the IWD campaign is functionally nonexistent, I lifted this structure out of the North and deposited it on the edge of the Forest of Tethir. Perhaps this was once an outpost in support of the larger elven communities like Suldenesselar.

Of course, that assumes the IWD1 campaign content is unavailable to a party in an EET game. So this content is conditional: if you play any IWD1 content that takes you through Easthaven and Kuldahar before getting to Athkatla, then this easter-egg version of Dragon's Eye and Severed Hand will be closed off to you. Since you will have already been there! But if you have not been to Easthaven - if you use the earlier components to make IWd1 its own campaign, or you simply declined to go there in BG1 when tipun's content allowed you to - then you may be able to find this content. Good luck!


## Bugs 

## Change Log 

## Credits

