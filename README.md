civicrm-payflowpro-final
=============

The completion of the payflow plugin for CiviCRM (recurring billing).  
This version has been tested for Wordpress, but the logic should remain the same for others also.  

Installing
=============

SQL changes: run the "install.sql" script to create an additional table, enable PayflowPro to be able to handle
             recurring payments and create a cron job within CiviCRM to handle the recurring updates.  

Cron Job: a cron job needs to be set up on the server running CiviCRM (see Civi documentation on how to do that)

Changes
=============

- / wp-content / plugins / civicrm / civicrm / CRM / Core / Payment / PayflowPro.php
- adds table "civicrm_payflowpro_recur"
- updates table "civicrm_payment_processor_type" to use recurring
- inserts into table "civicrm_job" a new job for to be executed

NOTICE
=============

The sql file was tested on civicrm 4.2.8. The Job table differs in 4.3 in that the "api_prefix" column is not existent anymore
