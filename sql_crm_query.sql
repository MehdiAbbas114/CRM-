create database crm1;
use crm1;
SELECT * FROM `lead`;
SELECT SUM(`Total Leads`) AS total_leads_sum FROM `lead`;
SELECT COUNT(*) AS converted_leads FROM `lead` WHERE `Converted` = 'TRUE';
SELECT (SUM(CASE WHEN `Converted` = 'TRUE' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS conversion_rate_percentage FROM `lead`;
select*from `account`;
select*from `oppertuninty table`;
SELECT `Account ID`, `Account Name`, `Account Type`
FROM account
WHERE `Account Type` IN ('Customer', 'Reseller', 'Partner');
select*from `opportunity product`;
SELECT `Account ID`, `Industry`, `Stage`, `Fiscal Quarter` FROM `oppertuninty table`WHERE Stage = 'Closed Won';
select*from `lead`;
select `Lead ID` , `Lead Source` , `Primary Application` from `lead`;
SELECT `Lead Source`, `Primary Application`, COUNT(*) AS lead_by_source
FROM `lead`
GROUP BY `Lead Source`, `Primary Application`
ORDER BY lead_by_source DESC;
SELECT `Industry` , `Primary Application` , COUNT(*) AS lead_by_industry
FROM `lead`
GROUP BY `Industry`, `Primary Application`
ORDER BY lead_by_industry DESC;
SELECT `Status`, `Primary Application`, COUNT(*) AS lead_by_status
FROM `lead`
GROUP BY `Status`, `Primary Application`
ORDER BY lead_by_status DESC;


