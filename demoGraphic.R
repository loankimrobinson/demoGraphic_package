


#=====================================================#
#=========      demoGraphic Package     ==============#
#=========        January 9, 2019       ==============#
#=========         Loan Robinson        ==============#
#=====================================================#


# Providing Demographic Table with the P-Value, Standardized Mean Difference Value
# https://cran.r-project.org/web/packages/demoGraphic/demoGraphic.pdf



# Checking how many people download demoGraphic package in a month? 
# The average is 350/ month
rm(list = ls())
library(dlstats)
cran_stats(c("demoGraphic"))


# install.packages("demoGraphic")
library(demoGraphic)


# Load data
load("/Users/loanrobinson/MC Characteristics Table/MC Table Function/demoGraphic_dt.RData", ex <- new.env())
ls.str(ex)
data  <- ex$data_MC


# Checking Group, make sure there are only 2 levels
table(data$group, useNA = "ifany")


# checking names of data_MC
dput(names(data))


# Get DemoGraphic table 
dm <- demo_table(c("Gestational Age at Time of Enrollment - Weeks ", 
                   "Maternal Ethnicity Category ",
                   "Pre-pregnancy Height  - cm ",
                   "Referral Source Category",
                   "Pre-pregnancy BMI Category - kg/m2  ",
                   "Pre-pregnancy Body Weight - kg "),"group", data)

dm
dm$demo_table
# Write DemoGraphic table to docx file
mydocx(dm$demo_table,"demoGraphic")


