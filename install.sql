CREATE TABLE IF NOT EXISTS `civicrm_payflowpro_recur` (
  `invoice_id` varchar(64) NOT NULL,
  `profile_id` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

UPDATE `civicrm_payment_processor_type` SET is_recur = '1' WHERE name = 'PayflowPro';

INSERT INTO `civicrm_job` (`id`, `domain_id`, `run_frequency`, `last_run`, `name`, `description`, `api_prefix`, `api_entity`, `api_action`, `parameters`, `is_active`) VALUES
(99, 1, 'Daily', NULL, 'PayflowPro', '', 'civicrm_api3', 'Job', 'payflowpro', '', 1);
