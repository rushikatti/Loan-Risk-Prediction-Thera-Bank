select * from credit_risk1;

# altering columns

ALTER TABLE credit_risk1
RENAME column `Personal Loan` to Personal_Loan;

ALTER TABLE credit_risk1
RENAME column `Securities Account` to Securities_Account;

ALTER TABLE credit_risk1
RENAME column `CD Account` to CD_Account;

ALTER TABLE credit_risk1
RENAME column `Income pm` to Income_PM;



# counting number of rows 
SELECT COUNT(*) AS total_rows  FROM credit_risk;



# basic stats

SELECT MIN(Age) as min_age,max(Age) as max_age,AVG(Age) as avg_age,
MIN(Income) as min_income,max(Income) as max_income,AVG(Income) as avg_income
from credit_risk1;



# Frequency counts for income and family 

select Income,count(*) as count
from credit_risk1
group by Income
order by Income;

select CD_Account,count(*) as count
from credit_risk1
group by CD_Account
order by CD_Account;

select Family,count(*) as count
from credit_risk1
group by Family
order by Family;



# Distribution of Loan approval

select Personal_Loan, count(*) as count
from credit_risk1
group by Personal_Loan;



# Loan approval Rate by different column 

select Education, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by Education;
 
select  Experience, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by Experience
order by approval_rate desc;

select  `Online`, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by `Online`
order by approval_rate desc;

select CCAvg, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by CCAvg
order by approval_rate desc;


select Mortgage,Income,
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by Mortgage,Income
order by approval_rate desc;



# comparing Loan approvals with different columns

select Personal_Loan,
	min(Income) as low_income,
    max(Income) as high_income,
    avg(Income) as avg_income
from credit_risk1
group by Personal_Loan;

select Personal_Loan,
	avg(Age) as avg_age
from credit_risk1
group by Personal_Loan;

select Personal_Loan,
	avg(CCAvg) as avg_spending
from credit_risk1
group by Personal_Loan;

select Personal_Loan,
    avg(Mortgage) as avg_debt
from credit_risk1
group by Personal_Loan;
   
   
   
# creating columns to compare loan approval with the speding ratio and debit ratio

alter table credit_risk1 add column Spending_ratio decimal(10,2);
update credit_risk1  set spending_ratio = CCAvg/Income;

alter table credit_risk1 add column debt_ratio decimal(10,2);
update credit_risk1  set debt_ratio = Mortgage/Income;

select Spending_ratio, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by Spending_ratio
order by approval_rate desc;

select debt_ratio, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by debt_ratio
order by approval_rate desc;

select Securities_Account, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by Securities_Account
order by approval_rate desc;

select CD_Account, 
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by CD_Account
order by approval_rate desc;

select Securities_Account,CD_Account,
	count(*) as Total,
	sum(Personal_Loan) as Approved,
	round(sum(Personal_Loan) /count(*) *100,2) as approval_rate
from credit_risk1
group by Securities_Account,CD_Account 
order by approval_rate desc;

select Personal_Loan,
    avg(spending_ratio) as avg_spending
from credit_risk1
group by Personal_Loan;
   
select Personal_Loan,
    avg(debt_ratio) as avg_debt
from credit_risk1
group by Personal_Loan;

select Personal_Loan,
    avg(spending_ratio) ,avg(debt_ratio)
from credit_risk1
group by Personal_Loan;

select Personal_Loan,Avg(Income_PM)
from credit_risk1
group by Personal_Loan;


   