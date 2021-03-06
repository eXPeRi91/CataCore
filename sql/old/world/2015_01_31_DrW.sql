-- add 27893 DancingRuneWeapen Creature
DELETE FROM `creature_template` WHERE `entry` = '27893';
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ('27893', '0', '0', '0', '0', '0', '1126', '11686', '0', '0', 'Rune Weapon', '', '', '0', '85', '85', '0', '0', '35', '35', '0', '1', '1.14286', '1', '1', '1', '0', '1000', '5000', '0', '0', '1', '3500', '2000', '1', '33587224', '2080', '0', '0', '0', '0', '0', '0', '1', '2', '0', '10', '1096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'npc_dancing_rune_weapon', '15595');

-- Dancing Rune Weapon damage reduction- Just Delete it Doesnt Need (cause Db error)
DELETE FROM creature_template_addon WHERE entry=27893;
-- INSERT INTO creature_template_addon (entry, path_id, mount, bytes1, bytes2, emote, auras) VALUES (27893, 0, 0, 0, 0, 0, '51906 2');


-- update flags pacified to prevent deal 2-3 auto attack damage
UPDATE creature_template SET unit_flags=33685504 WHERE entry=27893 LIMIT 1;

-- process for copy Damage
DELETE FROM spell_proc_event Where entry=49028;
INSERT INTO `spell_proc_event` (entry, procFlags) VALUES
('49028','69652');