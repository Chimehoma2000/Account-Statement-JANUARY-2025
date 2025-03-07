﻿-- Create Transactions Table

CREATE TABLE transactions
   ( transaction_id INTEGER,
    category VARCHAR(255),
    beneficiary_name VARCHAR(255),
    beneficiary_bank VARCHAR(255));


INSERT INTO transactions (transaction_id, category, beneficiary_name, beneficiary_bank) 
VALUES
(1, 'airtime', NULL, NULL),
(2, 'airtime', NULL, NULL),
(3, 'outward transfer', 'Franca Uchechi Nwadiaro', 'Access Bank'),
(4, 'airtime', NULL, NULL),
(5, 'airtime', NULL, NULL),
(6, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(7, 'outward transfer', 'Praise Isioma Uche', 'United Bank For Africa'),
(8, 'outward transfer', 'Ife Sheihu Enterprises', 'United Bank For Africa'),
(9, 'airtime', NULL, NULL),
(10, 'airtime', NULL, NULL),
(11, 'airtime', NULL, NULL),
(12, 'airtime', NULL, NULL),
(13, 'outward transfer', 'Pearl Alaeze Onunwor', 'Ecobank Bank'),
(14, 'pos', NULL, NULL),
(15, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(16, 'airtime', NULL, NULL),
(17, 'airtime', NULL, NULL),
(18, 'airtime', NULL, NULL),
(19, 'airtime', NULL, NULL),
(20, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(21, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(22, 'outward transfer', 'Steven Uche Opara', 'Opay'),
(23, 'airtime', NULL, NULL),
(24, 'airtime', NULL, NULL),
(25, 'outward transfer', 'Emeh James Chinedu', 'Access Bank'),
(26, 'airtime', NULL, NULL),
(27, 'pos', NULL, NULL),
(28, 'airtime', NULL, NULL),
(29, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(30, 'outward transfer', 'Nzechukwu Jacinta U', 'Gtbank Plc'),
(31, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(32, 'pos', NULL, NULL),
(33, 'outward transfer', 'Fineboy Chinweikpe Nwaosuagwu', 'Opay'),
(34, 'inward transfer', 'Excellence Chimehoma Onunwor', 'United Bank For Africa'),
(35, 'inward transfer', 'Cbn', 'United Bank For Africa'),
(36, 'pos', NULL, NULL),
(37, 'outward transfer', 'Daniel David', 'Opay'),
(38, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(39, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(40, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(41, 'airtime', NULL, NULL),
(42, 'airtime', NULL, NULL),
(43, 'airtime', NULL, NULL),
(44, 'airtime', NULL, NULL),
(45, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(46, 'airtime', NULL, NULL),
(47, 'airtime', NULL, NULL),
(48, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(49, 'inward transfer', 'Cbn', 'Zenith Bank Plc'),
(50, 'airtime', NULL, NULL),
(51, 'airtime', NULL, NULL),
(52, 'airtime', NULL, NULL),
(53, 'airtime', NULL, NULL),
(54, 'web payment', NULL, NULL),
(55, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(56, 'airtime', NULL, NULL),
(57, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(58, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(59, 'airtime', NULL, NULL),
(60, 'airtime', NULL, NULL),
(61, 'outward transfer', 'First Love Assembly Gratuity', 'Access Bank Plc (Diamond)'),
(62, 'outward transfer', 'Jacinta Nzechukwu', 'Moniepoint Mfb'),
(63, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(64, 'outward transfer', 'Ijeoma Joy Igwe', 'Opay'),
(65, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(66, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(67, 'outward transfer', 'Okechukwu Stanley Onwuta', 'Opay'),
(68, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(69, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(70, 'outward transfer', 'Jacinta Nzechukwu', 'Moniepoint Mfb'),
(71, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(72, 'pos', NULL, NULL),
(73, 'airtime', NULL, NULL),
(74, 'outward transfer', 'First Love Assembly Gratuity', 'Access Bank Plc (Diamond)'),
(75, 'outward transfer', 'Amalahu Fredrick Maduabuchi', 'Fcmb'),
(76, 'airtime', NULL, NULL),
(77, 'inward transfer', 'Excellence', 'Zenith Bank Plc'),
(78, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(79, 'airtime', NULL, NULL),
(80, 'airtime', NULL, NULL),
(81, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(82, 'outward transfer', 'Promise Chidimma Okenana', 'Opay'),
(83, 'outward transfer', 'Esiowu Anne Olose', 'Gtbank Plc'),
(84, 'airtime', NULL, NULL)



CREATE TABLE details
( 
transaction_id  INTEGER,				  -- Transaction id
category VARCHAR(50),               -- Transaction category
    description VARCHAR(255) ,           -- Transaction description
    date DATE,                          -- Transaction date
    time TIME,								  -- Transaction time
	day VARCHAR(50));                      -- Transaction day

INSERT INTO details (transaction_id, category, description, date, time,day)
VALUES
    (1, 'airtime', 'airtime', '2025-01-03', '19:12:00', 'friday'),
    (2, 'airtime', 'airtime', '2025-01-03', '19:45:00', 'friday'),
    (3, 'outward transfer', 'transaction', '2025-01-03', '21:15:00', 'friday'),
    (4,'airtime', 'airtime', '2025-01-04', '04:33:00', 'saturday'),
    (5,'airtime', 'airtime', '2025-01-04', '04:34:00', 'saturday'),
    (6,'inward transfer', 'credit from excel', '2025-01-05', '11:50:00', 'sunday'),
    (7,'outward transfer', 'transfer to friend', '2025-01-05', '13:18:00', 'sunday'),
    (8,'outward transfer', 'transaction', '2025-01-05', '13:46:00', 'sunday'),
    (9,'airtime', 'airtime', '2025-01-05', '23:28:00', 'sunday'),
    (10,'airtime', 'airtime', '2025-01-06', '12:09:00', 'monday'),
    (11,'airtime', 'airtime', '2025-01-06', '19:10:00', 'monday'),
    (12,'airtime', 'airtime', '2025-01-07', '20:57:00', 'tuesday'),
    (13,'outward transfer', 'transfer to friend', '2025-01-08', '12:10:00', 'wednesday'),
    (14,'pos', 'pos', '2025-01-08', '17:14:00', 'wednesday'),
    (15,'inward transfer', 'credit from excel', '2025-01-08', '20:27:00', 'wednesday'),
    (16,'airtime', 'airtime', '2025-01-08', '20:42:00', 'wednesday'),
    (17,'airtime', 'airtime', '2025-01-08', '22:55:00', 'wednesday'),
    (18,'airtime', 'airtime', '2025-01-09', '00:02:00', 'thursday'),
    (19,'airtime', 'airtime', '2025-01-09', '16:07:00', 'thursday'),
    (20,'outward transfer', 'food', '2025-01-09', '16:18:00', 'thursday'),
    (21,'inward transfer', 'credit from excel', '2025-01-09', '16:20:00', 'thursday'),
    (22,'outward transfer', 'transaction', '2025-01-10', '11:24:00', 'friday'),
    (23,'airtime', 'airtime', '2025-01-10', '19:15:00', 'friday'),
    (24,'airtime', 'airtime', '2025-01-10', '20:00:00', 'friday'),
    (25,'outward transfer', 'transaction', '2025-01-11', '10:05:00', 'saturday'),
    (26,'airtime', 'airtime', '2025-01-12', '06:42:00', 'sunday'),
    (27,'pos', 'withdrawal', '2025-01-12', '11:53:00', 'sunday'),
    (28,'airtime', 'airtime', '2025-01-12', '18:10:00', 'sunday'),
    (29,'outward transfer', 'groceries', '2025-01-13', '11:36:00', 'monday'),
    (30,'outward transfer', 'bread', '2025-01-13', '11:39:00', 'monday'),
    (31,'inward transfer', 'credit from excel', '2025-01-14', '09:18:00', 'tuesday'),
    (32,'pos', 'withdrawal', '2025-01-14', '09:47:00', 'tuesday'),
    (33,'outward transfer', 'school runs', '2025-01-14', '13:38:00', 'tuesday'),
    (34,'inward transfer', 'credit from excel', '2025-01-14', '14:04:00', 'tuesday'),
    (35,'inward transfer', 'bank charge', '2025-01-14', '14:04:00', 'tuesday'),
    (36,'pos', 'withdrawal', '2025-01-14', '14:30:00', 'tuesday'),
    (37,'outward transfer', 'transaction', '2025-01-14', '20:06:00', 'tuesday'),
    (38,'inward transfer', 'credit from excel', '2025-01-16', '13:02:00', 'thursday'),
    (39,'outward transfer', 'groceries', '2025-01-16', '13:16:00', 'thursday'),
    (40,'outward transfer', 'food', '2025-01-16', '17:14:00', 'thursday'),
    (41,'airtime', 'airtime', '2025-01-16', '21:43:00', 'thursday'),
    (42,'airtime', 'airtime', '2025-01-17', '15:08:00', 'friday'),
    (43,'airtime', 'airtime', '2025-01-17', '18:50:00', 'friday'),
    (44,'airtime', 'airtime', '2025-01-17', '22:22:00', 'friday'),
    (45,'outward transfer', 'food', '2025-01-18', '18:28:00', 'saturday'),
    (46,'airtime', 'airtime', '2025-01-18', '21:27:00', 'saturday'),
    (47,'airtime', 'airtime', '2025-01-19', '07:50:00', 'sunday'),
    (48,'inward transfer', 'credit from excel', '2025-01-19', '13:14:00', 'sunday'),
    (49,'inward transfer', 'bank charge', '2025-01-19', '13:14:00', 'sunday'),
    (50,'airtime', 'airtime', '2025-01-19', '13:16:00', 'sunday'),
    (51,'airtime', 'airtime', '2025-01-19', '20:57:00', 'sunday'),
    (52,'airtime', 'airtime', '2025-01-19', '21:45:00', 'sunday'),
    (53,'airtime', 'airtime', '2025-01-20', '07:17:00', 'monday'),
    (54,'web payment', 'remita payment', '2025-01-20', '09:57:00', 'monday'),
    (55,'outward transfer', 'food', '2025-01-20', '18:31:00', 'monday'),
    (56,'airtime', 'airtime', '2025-01-20', '19:18:00', 'monday'),
    (57,'outward transfer', 'groceries', '2025-01-20', '19:50:00', 'monday'),
    (58,'outward transfer', 'food', '2025-01-21', '18:20:00', 'tuesday'),
    (59,'airtime', 'airtime', '2025-01-21', '20:53:00', 'tuesday'),
    (60,'airtime', 'airtime', '2025-01-22', '04:45:00', 'wednesday'),
    (61,'outward transfer', 'offering', '2025-01-22', '19:17:00', 'wednesday'),
    (62,'outward transfer', 'bread', '2025-01-22', '20:18:00', 'wednesday'),
    (63,'inward transfer', 'credit from excel', '2025-01-23', '14:48:00', 'thursday'),
    (64,'outward transfer', 'transfer to friend', '2025-01-23', '14:50:00', 'thursday'),
    (65,'outward transfer', 'groceries', '2025-01-23', '20:49:00', 'thursday'),
    (66,'outward transfer', 'food', '2025-01-24', '15:22:00', 'friday'),
    (67,'outward transfer', 'transaction', '2025-01-24', '19:14:00', 'friday'),
    (68,'inward transfer', 'credit from excel', '2025-01-24', '20:23:00', 'friday'),
    (69,'outward transfer', 'groceries', '2025-01-24', '20:32:00', 'friday'),
    (70,'outward transfer', 'bread', '2025-01-24', '20:33:00', 'friday'),
    (71,'outward transfer', 'food', '2025-01-25', '17:00:00', 'saturday'),
    (72,'pos', 'bread', '2025-01-25', '19:55:00', 'saturday'),
    (73,'airtime', 'airtime', '2025-01-25', '22:50:00', 'saturday'),
    (74,'outward transfer', 'transaction', '2025-01-26', '11:18:00', 'sunday'),
    (75,'outward transfer', 'transaction', '2025-01-26', '21:54:00', 'sunday'),
    (76,'airtime', 'airtime', '2025-01-27', '12:51:00', 'monday'),
    (77,'inward transfer', 'credit from excel', '2025-01-27', '13:26:00', 'monday'),
    (78,'outward transfer', 'groceries', '2025-01-27', '14:00:00', 'monday'),
    (79,'airtime', 'airtime', '2025-01-27', '19:47:00', 'monday'),
    (80,'airtime', 'airtime', '2025-01-27', '19:47:00', 'monday'),
    (81,'outward transfer', 'groceries', '2025-01-28', '07:49:00', 'tuesday'),
    (82,'outward transfer', 'food', '2025-01-29', '16:26:00', 'wedesday'),
    (83,'outward transfer', 'groceries', '2025-01-29', '20:47:00', 'wedesday'),
    (84,'airtime', 'airtime', '2025-01-31', '14:37:00', 'friday');


	
CREATE TABLE amounts (
    transaction_id INT PRIMARY KEY,
    credit INT,
    debit INT,
    balance INT
);

INSERT INTO amounts (transaction_id, credit, debit, balance) VALUES
(1, NULL, 350, 3501),
(2, NULL, 500, 3001),
(3, NULL, 1900, 1101),
(4, NULL, 100, 1001),
(5, NULL, 100, 901),
(6, 9999, NULL, 10900),
(7, NULL, 1500, 9400),
(8, NULL, 950, 8450),
(9, NULL, 350, 8100),
(10, NULL, 200, 7900),
(11, NULL, 400, 7500),
(12, NULL, 300, 7200),
(13, NULL, 2000, 5200),
(14, NULL, 5150, 50),
(15, 9900, NULL, 9950),
(16, NULL, 350, 9600),
(17, NULL, 200, 9400),
(18, NULL, 200, 9200),
(19, NULL, 6000, 3200),
(20, NULL, 1000, 2200),
(21, 9970, NULL, 12170),
(22, NULL, 2500, 9670),
(23, NULL, 170, 9500),
(24, NULL, 200, 9300),
(25, NULL, 3100, 6200),
(26, NULL, 50, 6150),
(27, NULL, 2000, 4150),
(28, NULL, 150, 4000),
(29, NULL, 800, 3200),
(30, NULL, 350, 2850),
(31, 9700, NULL, 12550),
(32, NULL, 10350, 2200),
(33, NULL, 2200, 0),
(34, 14950, NULL, 14950),
(35, NULL, 50, 14900),
(36, NULL, 10000, 4900),
(37, NULL, 4900, 0),
(38, 9050, NULL, 9050),
(39, NULL, 5100, 3950),
(40, NULL, 1000, 2950),
(41, NULL, 50, 2900),
(42, NULL, 200, 2700),
(43, NULL, 200, 2500),
(44, NULL, 100, 2400),
(45, NULL, 1000, 1400),
(46, NULL, 200, 1200),
(47, NULL, 200, 1000),
(48, 17500, NULL, 18500),
(49, NULL, 50, 18450),
(50, NULL, 350, 18100),
(51, NULL, 100, 18000),
(52, NULL, 500, 17500),
(53, NULL, 200, 17300),
(54, NULL, 5439, 11861),
(55, NULL, 1000, 10861),
(56, NULL, 300, 10561),
(57, NULL, 500, 10061),
(58, NULL, 1000, 9061),
(59, NULL, 500, 8561),
(60, NULL, 200, 8361),
(61, NULL, 1000, 7361),
(62, NULL, 1100, 6261),
(63, 7400, NULL, 13661),
(64, NULL, 2000, 11661),
(65, NULL, 5000, 6661),
(66, NULL, 1000, 5661),
(67, NULL, 4000, 1661),
(68, 5000, NULL, 6661),
(69, NULL, 800, 5861),
(70, NULL, 350, 5511),
(71, NULL, 1010, 4501),
(72, NULL, 1200, 3301),
(73, NULL, 300, 3001),
(74, NULL, 1010, 1991),
(75, NULL, 910, 1081),
(76, NULL, 200, 881),
(77, 9800, NULL, 10681),
(78, NULL, 5010, 5671),
(79, NULL, 1000, 4671),
(80, NULL, 200, 4471),
(81, NULL, 1010, 3461),
(82, NULL, 1010, 2451),
(83, NULL, 1010, 1441),
(84, NULL, 440, 1001);


--all columns

select *
from transactions

select *
from amounts

select *
from details

ALTER TABLE details
SET 

SELECT --count row numbers
ROW_NUMBER () OVER ( order by category) as transaction_id
FROM details

ALTER TABLE details
ADD transaction_id INT

UPDATE details
SET transaction_id = 
--SELECT --count row numbers
ROW_NUMBER () OVER ( order by category) as transaction_id
FROM details
						--PROBLEM STATEMENTS


--1. What is the total income (credits) and total expenses (debits) for the month?
select 
sum(credit) as total_credit,
sum(debit) as total_debit
from amounts

 -- 2..What percentage of the income was spent during the month?

select sum(debit)/sum(credit)*100 as PercentIncomeSpent
from amounts

-- 3.. What is the largest single credit and debit transaction recorded?
Select max(credit) as largest_credit,
	   max(debit) as largest_debit 
	   from amounts

-- 4.. On which days did the balance drop to its lowest levels?

select min(balance) as minimun_balance --lowest balance
from amounts

SELECT DISTINCT d.day, (d.date)       ---- account hit 0 twice same day
FROM details d
JOIN amounts a
ON d.transaction_id=a.transaction_id
WHERE balance = 0

--5..  What is the average daily balance maintained?

  SELECT  CONCAT('NGN ', AVG(balance)) AS avg_bal
  from amounts

--6..  What is the average transaction amount per beneficiary?
  SELECT CONCAT('NGN ', AVG(debit)) as avg_debit
  from amounts

--7..  Which banks were involved in most transactions?

--All banks and transaction count
	SELECT DISTINCT (t.beneficiary_bank), COUNT(a.debit) as transaction_count
	FROM transactions t
	JOIN amounts a
	ON a.transaction_id = t.transaction_id
	WHERE t.beneficiary_bank IS NOT NULL
	GROUP BY t.beneficiary_bank
	ORDER BY transaction_count DESC


	--TOP 3 BANKS INVOLVED IN MOST TRANSACTIONS
		SELECT TOP 3 t.beneficiary_bank, COUNT(a.debit) as transaction_count
	FROM transactions t
	JOIN amounts a
	ON a.transaction_id = t.transaction_id
	WHERE t.beneficiary_bank IS NOT NULL
	GROUP BY t.beneficiary_bank
	ORDER BY transaction_count DESC

--8..	What are the peak spending days in the month? (top 3)

SELECT TOP 3 day, sum(debit) as total_debit
FROM amounts a
JOIN details d
ON a.transaction_id = d.transaction_id
GROUP BY day
ORDER BY total_debit desc

--9.. Which beneficiaries received the most payments during the month (TOP 3)?
 SELECT TOP 3 t.beneficiary_name,  SUM(a.debit) AS debit_amt
 FROM transactions t
JOIN amounts a
 ON t.transaction_id = a.transaction_id
 WHERE t.beneficiary_name IS NOT NULL
 GROUP BY t.beneficiary_name
 ORDER BY debit_amt desc

--10..  Which transaction categories had the highest and lowest spending?

--category with highest spending
SELECT  TOP 1 category, 
CONCAT('NGN ', sum(debit)) as total_debit_amt
FROM transactions t
JOIN amounts a
ON a.transaction_id=t.transaction_id
GROUP BY category
HAVING sum(debit) > 100  ---- filter out mistake
ORDER BY total_debit_amt DESC

--category with lowest spending
SELECT  TOP 1 category, 
CONCAT ('NGN ', sum(debit)) as total_debit_amt
FROM transactions t
JOIN amounts a
ON a.transaction_id=t.transaction_id
GROUP BY category
HAVING sum(debit) > 100  ---- filter out mistake
ORDER BY total_debit_amt ASC

--11..  What is the total income (credits) and total expenses (debits) for the month?
SELECT 
CONCAT ('NGN ', SUM(debit)) as total_expenses,
CONCAT ('NGN ', SUM(credit)) as total_income
FROM amounts

--12.. What is the closing account balance of the statement?
SELECT CONCAT ('NGN ', SUM(debit) -SUM(credit)) as opening_act_bal
FROM amounts

--13.. Which transactions were above ₦10000?

WITH query AS  --- CTE
(
SELECT transaction_id,debit, credit
FROM amounts
)
SELECT transaction_id,debit,credit
FROM query 
WHERE credit >10000

--14.. What is the total amount transferred to each bank?
SELECT t.beneficiary_bank,CONCAT ('NGN ', SUM(a.debit)) as total_transaction_amt
FROM transactions t
JOIN amounts a
ON a.transaction_id=t.transaction_id
WHERE t.beneficiary_bank IS NOT NULL
GROUP BY t.beneficiary_bank
ORDER BY total_transaction_amt DESC

--15.. How does spending in the third week compare to other weeks? ...............NOT ANSWERED

SELECT 
    SUM(a.debit) AS week_spending_amt, 
    CASE 
        WHEN d.date BETWEEN '2025-01-01' AND '2025-01-04' THEN 'week_1'
        WHEN d.date BETWEEN '2025-01-05' AND '2025-01-11' THEN 'week_2'
        WHEN d.date BETWEEN '2025-01-12' AND '2025-01-18' THEN 'week_3'
        WHEN d.date BETWEEN '2025-01-19' AND '2025-01-25' THEN 'week_4'
        WHEN d.date BETWEEN '2025-01-26' AND '2025-01-31' THEN 'week_5'
        ELSE 'Other'
    END AS week_group
FROM amounts a
JOIN details d
ON a.transaction_id = d.transaction_id
GROUP BY 
    CASE 
        WHEN d.date BETWEEN '2025-01-01' AND '2025-01-04' THEN 'week_1'
        WHEN d.date BETWEEN '2025-01-05' AND '2025-01-11' THEN 'week_2'
        WHEN d.date BETWEEN '2025-01-12' AND '2025-01-18' THEN 'week_3'
        WHEN d.date BETWEEN '2025-01-19' AND '2025-01-25' THEN 'week_4'
        WHEN d.date BETWEEN '2025-01-26' AND '2025-01-31' THEN 'week_5'
        ELSE 'Other'
    END
ORDER BY week_group



--16.. What are the peak transaction times during the day? (HIGHEST 3)

WITH top_transactions AS (
    SELECT TOP 3 
        DATEPART(HOUR, time) AS transaction_hour,  -- Extract hour
        COUNT(*) AS transaction_count
    FROM details
    GROUP BY DATEPART(HOUR, time)
    ORDER BY transaction_count DESC  -- Sort by highest transaction count
)
SELECT transaction_count,
    CASE
        WHEN transaction_hour = 20 THEN '8PM-9PM'
        WHEN transaction_hour = 19 THEN '7PM-8PM'
        WHEN transaction_hour = 13 THEN '1PM-2PM'
    END AS transaction_time
FROM top_transactions
SELECT day
from details


--17.. Were there any days with significantly high spending compared to the usual trend?



WITH daily_spending AS (
    SELECT 
        d.date, 
        SUM(a.debit) AS total_spent
    FROM amounts a
    JOIN details d ON a.transaction_id = d.transaction_id
    GROUP BY d.date
), 
avg_spending AS (
    SELECT AVG(total_spent) AS avg_daily_spending
    FROM daily_spending
)
SELECT 
    ds.date, 
    ds.total_spent, 
    asp.avg_daily_spending, 
    CASE 
        WHEN ds.total_spent >= asp.avg_daily_spending * 2 THEN 'Extremely High Spending'
        WHEN ds.total_spent >= asp.avg_daily_spending * 1.5 THEN 'High Spending'
        ELSE 'Normal Spending'
    END AS spending_category
FROM daily_spending ds
CROSS JOIN avg_spending asp
WHERE ds.total_spent >= asp.avg_daily_spending * 1.5
ORDER BY ds.total_spent DESC

--18 .. What sub-category consumed the most and least?

--THE MOST 

SELECT TOP 1 description, SUM(debit) as desc_total
FROM amounts a
JOIN details d
ON a.transaction_id = d.transaction_id
GROUP BY description
ORDER BY desc_total DESC

--THE LEAST

WITH sub_cat AS
(
SELECT  description, SUM(debit) as desc_total
FROM amounts a
JOIN details d
ON a.transaction_id = d.transaction_id
GROUP BY description
)
SELECT TOP 1 description, desc_total
FROM sub_cat
WHERE desc_total IS NOT NULL
GROUP BY description, desc_total
ORDER BY desc_total ASC

--23.. What is the median transaction value for each type of spending (e.g., luxury purchases vs. essentials)?

SELECT d.description,SUM(a.debit) as sum
FROM details d
JOIN amounts a
ON d.transaction_id = a.transaction_id
GROUP BY d.description