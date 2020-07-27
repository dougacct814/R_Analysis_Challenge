
install.packages("tidyverse")
install.packages("jsonlite")
install.packages("psych")
install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)    # alternatively, this also loads %>%

MechaCar <- read.csv('MechaCar_mpg.csv') 
mpgmodel=lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=MechaCar) 
summary(mpgmodel)
SuspensionCoil <- read.csv('Suspension_Coil.csv') 
psi_statistics <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(PSI_Mean=mean(PSI), PSI_Median=median(PSI), PSI_Var=var(PSI), PSI_StdDev=sd(PSI))
t.test(SuspensionCoil$PSI,mu=1500) #compare sample versus overall PSI means 
plot(mpgmodel)





