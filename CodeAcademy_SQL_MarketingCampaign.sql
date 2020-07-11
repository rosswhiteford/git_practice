 SELECT * 
 FROM users
 LIMIT 20;

 SELECT email, birthday AS 'Born in the 80s campaign' 
 FROM users
 WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31'
 ORDER BY birthday ASC;

 SELECT email, created_at AS 'Pre-May 2017 Sign-ups'
 FROM users
 WHERE created_at < '2017-05-01'
 ORDER BY created_at DESC;

 SELECT email, test AS '"Bears" A/B Test group'
 FROM users
 WHERE test = 'bears';

 SELECT email, campaign AS 'Ad campaign "BBB" group'
 FROM users
 WHERE campaign LIKE 'BBB%'
 ORDER BY campaign ASC;

 SELECT email, campaign AS 'Ad copy #2 group'
 FROM users
 WHERE campaign = 'AAA-2'
  OR campaign = 'BBB-2'
 ORDER BY campaign ASC; 

 SELECT email AS 'User Group in both "test" and "campaign"'
 FROM users
 WHERE campaign IS NOT null
  AND test IS NOT null;