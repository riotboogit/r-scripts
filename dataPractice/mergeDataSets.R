# load data #####

setwd("C:/work/school/rProgramming")
# get names
dfNames <- read.csv("data/Names.csv")
#get Salaries
dfSalaries <- read.csv("data/Salaries.csv")
#get Dept
dfDept <- read.csv("data/Dept.csv")
#get DOB
dfDOB <- read.csv("data/DOB.csv")

# combine data #####
dfCombined <- merge(dfNames, dfSalaries, by = "ID", all = TRUE)
print(dfCombined)
#add dept
dfCombined <- merge(dfCombined, dfDept, by = "ID", all = TRUE)
print(dfCombined)
#add dob
dfCombined <- merge(dfCombined, dfDOB, by = "ID", all = TRUE)
print(dfCombined)

#compute age 
# Get the current date
current_date <- Sys.Date()

# Format the date as MM/DD/YYYY
formatted_date <- format(current_date, "%m/%d/%Y")

# Print the formatted date
print(formatted_date)
#basic visualization #####
Salary <- dfCombined$Salary
hist(Salary)
