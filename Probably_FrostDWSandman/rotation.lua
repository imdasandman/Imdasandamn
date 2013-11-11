-- ProbablyEngine Rotation Packager
-- Custom Frost Death Knight Rotation
-- Created on Nov 11th 2013 8:21 pm
ProbablyEngine.rotation.register_custom(251, "FrostDWSandman", {

  -- =======================================
  --          Your Rotation Here!
  -- =======================================
  -- Everything between the first set of { }
  -- in the core rotations can go here
  -- =======================================
  -- If you have any questions, please ask
  -- on the ProbablyEngine Forums!
  -- =======================================
--Pause Rotation
	{ "pause", "modifier.lshift" },

--Presence Checks
	{ "Frost Presence", "!player.buff(Frost Presence)" },

-- Tier 2 Talents

-- Death's Advance

-- Tier 4  Talents
	-- Death Pact Macro
	{ "!/cast Raise Dead\n/cast Death Pact", {
      "player.health < 35",
      "player.spell.cooldown(Death Pact)",
      "player.spell.cooldown(Raise Dead)",
      "player.spell.usable(Death Pact)"
	}},
	
	{ "Death Siphon", "player.health < 65" },
	
--	Tier 6 Talents
	{ "Gorefiend's Grasp", {
	"modifier.rshift",
	"player.spell.usable(Gorefiend's Grasp)" }},
	{ "Remorseless Winter", {
	"modifier.rshift",
	"player.spell.usable(Remorseless Winter)" }}, 
	{ "Desecrated Ground",  {
	"modifier.rshift",
	"player.spell.usable(Descerated Ground)" }},
	
	--Trinket Procs
	--{ "!/use 13", "player.buff(Unholy Strength)" },
	--{ "!/use 14", "player.buff(Unholy Strength)" },

--Racial Cooldowns
	{ "Berserking", "modifier.cooldowns" },
	{ "Blood Fury", "modifier.cooldowns" },

--Cooldowns
	{ "Pillar of Frost", "modifier.cooldowns" },
	{ "Raise Dead", "modifier.cooldowns" },
	

-- hard cast dnd
	{ "Death and Decay", "modifier.lalt", "ground" },


--Interupts
	{ "Mind Freeze", "modifier.interrupts" },
	{ "Asphyxiate", "modifier.interrupts" },
	{ "Strangulate", "modifier.interupts" },
	
-- Survival
	--{ "Anti-Magic Shell", "player.health < 70" },
	--{ "Death Strike", "player.health < 50" },
	--{ "Death Siphon", "player.health < 80" },
	--{ "Icebound Fortitude", "player.health < 30" },




	--Rotation
	
	--AOE
	
	{ "Pestilence", {
	"modifier.lcontrol",
	"target.debuff(Blood Plague)",
	"target.debuff(Frost Fever)", 
	}},
	{ "Unholy Blight", {
	"player.spell(Unholy Blight).usable",
	"target.range <= 8",
	}},
	{ "Howling Blast", "modifier.multitarget" },
	{ "Blood Tap", "modifier.multitarget", "player.buff(Blood Charge).count >= 10" },
	{ "Frost Strike", "modifier.multitarget", "player.buff(Killing Machine)" },
	{ "Frost Strike", "modifier.multitarget", "player.runicpower >= 76" },
	{ "Death and Decay", {
	"modifier.multitarget",
	"player.runes(Unholy).count >= 1",
	"ground" }},
	{ "Plague Strike", {
	"modifier.multitarget",
	"player.runes(Unholy).count = 2", 
	}},
	{ "Blood Tap", "modifier.multitarget", "player.buff(Blood Charge).count >= 5" },
	{ "Frost Strike", "modifier.multitarget", "player.runicpower >=26" },
	{ "Horn of Winter", "modifier.multitarget" },
	{ "Plague Leech", {
	"modifier.multitarget",
	"target.debuff(Frost Fever)",
	"target.debuff(Blood Plague)",
	"player.rune(Unholy).count <= 1",
	}},
	{ "Plague Strike", {
	"modifier.multitarget",
	"player.runes(Unholy).count = 1", 
	}},
	{ "Empower Rune Weapon", { 
	"modifier.cooldowns",
	"modifier.multitarget" }},
	

	--Single
	{ "Blood Tap", {
	"player.buff(Blood Charge).count >= 10",
	"player.runicpower > 76" }}, 
	{ "Blood Tap", {
	"player.buff(Blood Charge).count >= 10",
	"player.runicpower >= 20",
	"player.buff(Killing Machine)"}},
	{ "Frost Strike", {
	"player.buff(Killing Machine)",
	"player.runicpower > 88" }},
	{ "Howling Blast", "player.runes(Death).count > 1" },
	{ "Howling Blast", "player.runes(Frost).count > 1" },
	{ "Howling Blast", "!target.debuff(Frost Fever)" },
	{ "Plague Strike", "!target.debuff(Blood Plague)" },
	{ "Howling Blast", "player.buff(Rime)" },
	{ "Frost Strike", "player.runicpower >= 76"},
	{ "Howling Blast" },
    { "Blood Tap", "player.buff(Blood Charge).count >= 5" }, 
	{ "Frost Strike", "player.runicpower >= 40"},
    { "Horn of Winter" },
	{ "Plague Leech" },
    { "Empower Rune Weapon", { 
	"modifier.cooldowns", }},
	{ "Death and Decay", {
	"player.runes(Unholy).count > 0", 
	"!player.buff(Pillars of Frost)",
	"ground" }},
    { "Plague Strike", "player.runes(Unholy).count > 0" },


  }
  )