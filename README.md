#  <h1 align="center"> My-Account-statement-January2025</h1>
----------------------------------------------------------------
This analysis from my account statement would let me have an idea of my financial spending in the month of January 2025 
![Image](https://github.com/user-attachments/assets/895951f9-e41b-4c21-8f8c-8b5e12264a92)  

##### <h1 align="center">PROBLEM STATEMENT</h1>
Checkmate and track income and expenses for JANUARY 2025.  

##### <h1 align="center"> OVERVIEW OF DATASET </h1>
Dataset was gotten from Kuda mobile app as was requested from dates 01-01-2025 to 31-01-2025, And was received in an xlsx (Excel) file.

##### <h1 align="center"> TOOLS </h1>
Power Query (Data Cleaning)  
SQL (query)  

##### <h1 align="center"> PROCESSES </h1>
Data Collection  
Data Cleaning  
Data Analysis  

##### <h1 align="center">DATA CLEANING </h1>
![Image](https://github.com/user-attachments/assets/1a16878a-e2f7-4e92-b604-e5c9924cf07d)
* Data was loaded into powerquery in Microsoft Excel.
* Split into 3 tables.
* Converted date column to date format. since any rows from (13th of January) had an error converting to date, i changed locale.
* Included transaction_id as a column that served as transaction number.
* Included days of transactions using dates.
* Split the date/time column using delimiter
* Created a description column and populated based an what was existing

##### <h1 align="center">DATA MODELLING </h1>
 ![Image](https://github.com/user-attachments/assets/df1d4fb7-52b2-41a2-9506-75bcca3656ae)

#  <h1 align="center"> QUESTIONS AND SOLUTION </h1>
 --------------------------------

###  --1. What is the total income (credits) and total expenses (debits) for the month?


```sql
 select 
sum(credit) as total_credit,
sum(debit) as total_debit
from amounts

```

#### Query Result:
| total_credit | total_debit|
| ----------- | -----------|
| 103269      | 106119        |

### -- 2..What percentage of the income was spent during the month?


```sql
select sum(debit)/sum(credit)*100 as PercentIncomeSpent
from amounts

```

#### Query Result:
| PercentIncomeSpent|
 | -----------|
 | 100      |


### -- 3.. What is the largest single credit and debit transaction recorded?

```sql
Select max(credit) as largest_credit,
	   max(debit) as largest_debit 
	   from amounts

```

#### Query Result:
| largest_credit | largest_debit |
| ----------- | -----------|
| 17500     | 10350       |


### -- 4.. On which days did the balance drop to its lowest levels?

```sql
select min(balance) as minimun_balance --lowest balance
from amounts
```
#### Query Result:
| minimun_balance|
 | -----------|
 | 0      |

 
```sql
SELECT DISTINCT d.day, (d.date)       ---- account hit 0 twice same day
FROM details d
JOIN amounts a
ON d.transaction_id=a.transaction_id
WHERE balance = 0
```

#### Query Result:
| day | date |
| ----------- | -----------|
| tuesday     | 2025-01-14      |

### --5..  What is the average daily balance maintained?

 ```sql
 SELECT  CONCAT('NGN ', AVG(balance)) AS avg_bal
  from amounts
```
#### Query Result:
|  avg_bal|
 | -----------|
 | NGN 6681      |

 
### --6..  What is the average transaction amount per beneficiary?


 ```sql
  SELECT CONCAT('NGN ', AVG(debit)) as avg_debit
  from amounts
```
|  avg_debit|
 | -----------|
 | NGN 1434      |

 ### --7..  Which banks were involved in most transactions?
 ```sql
 --All banks and transaction count
	SELECT DISTINCT (t.beneficiary_bank), COUNT(a.debit) as transaction_count
	FROM transactions t
	JOIN amounts a
	ON a.transaction_id = t.transaction_id
	WHERE t.beneficiary_bank IS NOT NULL
	GROUP BY t.beneficiary_bank
	ORDER BY transaction_count DESC
```
#### Query Result:
| beneficiary_bank|  transaction_count|
| ----------- 	   | -----------      |
|Opay	| 13  |
|Gtbank Plc	| 9 |
|United Bank For Africa	|3 |
| Moniepoint Mfb	|2|
| Access Bank|	2 |
| Access Bank Plc (Diamond)|	2 |
| Ecobank Bank|	1 |
|Fcmb	|1 |

 ```sql
	--TOP 3 BANKS INVOLVED IN MOST TRANSACTIONS
		SELECT TOP 3 t.beneficiary_bank, COUNT(a.debit) as transaction_count
	FROM transactions t
	JOIN amounts a
	ON a.transaction_id = t.transaction_id
	WHERE t.beneficiary_bank IS NOT NULL
	GROUP BY t.beneficiary_bank
	ORDER BY transaction_count DESC
```


#### Query Result:	  --TOP 3 BANKS INVOLVED IN MOST TRANSACTIONS
| beneficiary_bank|  transaction_count|
| ----------- 	   | -----------      |
|Opay	| 13  |
|Gtbank Plc	| 9 |
|United Bank For Africa	|3 |


### --8..	What are the peak spending days in the month? (top 3)

 ```sql
	SELECT TOP 3 day, sum(debit) as total_debit
FROM amounts a
JOIN details d
ON a.transaction_id = d.transaction_id
GROUP BY day
ORDER BY total_debit desc
```

#### Query Result:	  --TOP 3 
| day		|  total_debit|
| ----------- 	   | ----------- |
|tuesday	| 30310 |
|thursday	| 20350 |
|monday      |15599|

### --9.. Which beneficiaries received the most payments during the month (TOP 3)?

  ```sql
 SELECT TOP 3 t.beneficiary_name, SUM(a.debit) AS debit_amt
 FROM transactions t
JOIN amounts a
 ON t.transaction_id = a.transaction_id
 WHERE t.beneficiary_name IS NOT NULL
 GROUP BY t.beneficiary_name
 ORDER BY debit_amt desc
```
#### Query Result:
| beneficiary_name|  debit_amt|
| ----------- 	   | -----------     |
|Esiowu Anne Olose	| 19230 |
|Promise Chidimma Okenana	| 8020|
|Daniel David	|4900|

### --10..  Which transaction categories had the highest and lowest spending?


  ```sql
--category with highest spending
SELECT  TOP 1 category, 
CONCAT('NGN ', sum(debit)) as total_debit_amt
FROM transactions t
JOIN amounts a
ON a.transaction_id=t.transaction_id
GROUP BY category
HAVING sum(debit) > 100  ---- filter out mistake
ORDER BY total_debit_amt DESC
```

|  category|total_debit_amt|
 | -----------|-----------|
 | outward transfer  |NGN 57020|

 
  ```sql
--category with lowest spending
SELECT  TOP 1 category, 
CONCAT ('NGN ', sum(debit)) as total_debit_amt
FROM transactions t
JOIN amounts a
ON a.transaction_id=t.transaction_id
GROUP BY category
HAVING sum(debit) > 100  ---- filter out mistake
ORDER BY total_debit_amt ASC
```

|  category|total_debit_amt|
 | -----------|-----------|
 | airtime |NGN 14860|

### --11..  What is the total income (credits) and total expenses (debits) for the month?

  ```sql
SELECT 
CONCAT ('NGN ', SUM(debit)) as total_expenses,
CONCAT ('NGN ', SUM(credit)) as total_income
FROM amounts
```

|   total_expenses|total_income|
 | -----------|-----------|
 | NGN 106119 |NGN 103269|

### --12.. What is the closing account balance of the statement?

  ```sql
SELECT CONCAT ('NGN ', SUM(debit) -SUM(credit)) as opening_act_bal
FROM amounts
```
|  opening_act_bal|
 | -----------|
 | NGN 2850      |

### --13.. Which transactions were above ₦10000?
 
  ```sql
WITH query AS  --- CTE
(
SELECT transaction_id,debit, credit
FROM amounts
)
SELECT transaction_id,debit,credit
FROM query 
WHERE credit >10000
```
|   transaction_id,|debit|credit|
 | -----------|-----------|-----------|
 | 34|NULL|14950|
  | 48|NULL|17500|


### --14.. What is the total amount transferred to each bank?
  ```sql
SELECT t.beneficiary_bank,CONCAT ('NGN ', SUM(a.debit)) as total_transaction_amt
FROM transactions t
JOIN amounts a
ON a.transaction_id=t.transaction_id
WHERE t.beneficiary_bank IS NOT NULL
GROUP BY t.beneficiary_bank
ORDER BY total_transaction_amt DESC
```
|   beneficiary_bank|total_transaction_amt|
 | -----------|-----------|
 | Fcmb		|NGN 910	|
  | Access Bank		|NGN 5000	|
  | Zenith Bank Plc	|NGN 50	|
  | United Bank For Africa	|NGN 2500	|
 |Opay	|NGN 23620	|
 |Access Bank Plc (Diamond)|NGN 2010	|
 |Ecobank Bank	|NGN 2000	|
|Gtbank Plc	|NGN 19580	|  
|Moniepoint Mfb	|NGN 1450	|
    
