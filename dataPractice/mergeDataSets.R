# using basic r libraries
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
View(dfDOB)

# combine data #####
dfCombined <- merge(dfNames, dfSalaries, by = "ID", all = TRUE)
print(dfCombined)
#add dept
dfCombined <- merge(dfCombined, dfDept, by = "ID", all = TRUE)
print(dfCombined)
#add dob
dfCombined <- merge(dfCombined, dfDOB, by = "ID", all = TRUE)
print(dfCombined)

#compute age from dob
#add the column to the dataframe
dfCombined <- cbind(dfCombined, Age = NA)

# Get the current date
current_date <- Sys.Date()

# Format the date as MM/DD/YYYY
formatted_date <- format(current_date, "%m/%d/%Y")

# Print the formatted date
print(formatted_date)

for(i in 1:nrow(dfCombined)) {
  print(paste("Processing row:", i))
  print(dfCombined[i, ])
}


#basic visualization #####
Salary <- dfCombined$Salary
hist(Salary)
