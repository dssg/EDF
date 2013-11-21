/*

Code for cleaning raw CSV data from 

*/
clear

*sepcify the origin of the data
local drive "/Users/matthewgee/Dropbox/Partner Data/Acquired Data/Combined Dataset/"
local data "New_Combined_Workbook.csv"
local data1 "Revised Data Set.csv"

cd "`drive'"

insheet using "`data1'", comma


