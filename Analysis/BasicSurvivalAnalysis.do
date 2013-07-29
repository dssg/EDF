
**Read in data
clear all
set more off

local loadData = "~/Data/Energy/EDF/5 31 13 GJGNY Financing Data for CEFC (REVISED FINAL).csv"
local saveData 

insheet using "`loadData'", comma

**Basic Summary Statistics
desc
codebook delinquent creditscore debttoincomecd annualincome loantype originalloanamount interestrate paymentamount

** Transform Data
tab loantype, gen(loantype)

**Basic Delinquency Analysis
gen delinquent = cond(daysdelinquent~=.,1,0)

reg delinquent creditscore debttoincomecd annualincome loantype1 loantype2 originalloanamount originalterm interestrate paymentamount
logit delinquent creditscore debttoincomecd annualincome loantype1 loantype2 originalloanamount originalterm interestrate paymentamount

***Interesting Insights

**Controling for credit score, on bill is 

** Add