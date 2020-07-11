SELECT * 
 FROM transaction_data
 LIMIT 10;

 SELECT full_name, email AS 'Suspicious Zip Code Activity'
 FROM transaction_data
 WHERE zip = '20252';

 SELECT full_name, email AS 'Suspicious Pseudonym Activity'
 FROM transaction_data
 WHERE full_name = 'Art Vandelay'
  OR full_name LIKE '% der %';

SELECT ip_address, email AS 'Internal IP Address'
FROM transaction_data
WHERE ip_address LIKE '10.%';

SELECT full_name, email AS 'Temp. E-mail Domain'
FROM transaction_data
WHERE email LIKE '%temp_email.com';

SELECT full_name, email, ip_address AS 'Fraudulent Transaction'
FROM transaction_data
WHERE ip_address LIKE '120.%'
  AND full_name LIKE 'John%';
