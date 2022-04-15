INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_ammunation', 'Ammunation', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_ammunation', 'Ammunation', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_ammunation', 'Ammunation', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ammunation', 'Ammunation', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('ammunation', 0, 'novice', 'Rerue', 100, '', ''),
('ammunation', 1, 'experimente', 'Experimenté', 100, '', ''),
('ammunation', 2, 'boss', 'Patron', 100, '', '');