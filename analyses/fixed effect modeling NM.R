# Author: Nora Mitchell
# Testing models with vs without weighting, with quasibinomial vs logit proportions, versus pgls
# 31 August 2022: initial tests with models 1-3
# 9 September 2022: continue running with models 4-9, clean up naming
# 19-21 October 2022: calculate R2 using rsq, add in confint(), adjust DIC output for models 7-9 to save properly, removed pgls 

# Load Packages
library(papeR)
library(tidyverse) # Needed for data wrangling: dplyr, tidyr, ggplot2
library(readxl)
library(cowplot) # Needed for publication-quality ggplots
library(magrittr)
library(sjPlot)
library(glmmTMB)
library(lme4)
library(gt)
library(nlme)
library(rsq)

rm(list = ls())

setwd("C:/Users/mitchenc/OneDrive - UW-Eau Claire/Collaborations/caterpillar")

# read in data

modeling_data_density <- read.csv("parasitismEFS_complete.csv", header = TRUE, na.strings = "NA")
modeling_data_density %<>% mutate(HostPlant = factor(HostPlant),
                                  HostPlant = relevel(HostPlant, "BC"))
modeling_data_density %<>% rename(cat_sp = species)

rownames(modeling_data_density) <- modeling_data_density$cat_sp

# calculate proportion parasitized for each category
modeling_data_density <- modeling_data_density %>% 
  mutate(para_prop = Num_Para / para_sampled,
         tach_prop = Num_Para_Tachinid / para_sampled,
         hym_prop = Num_Para_Hymenoptera / para_sampled)


############################
# fixed effect bird models
############################

## a - weighting, quasibinomial
## b - no weighting, quasibinomial
## c - weighting, logit
## d - no weighting, logit

###############
## all
##############

bird_mdl_a <- glm(cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                family = quasibinomial(),
                data = modeling_data_density,
            weight = 1/site.varDRR.birds)

summary(bird_mdl_a)
confint(bird_mdl_a)
rsq(bird_mdl_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

bird_mdl_b <- glm(cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                family = quasibinomial(),
                data = modeling_data_density)
summary(bird_mdl_b)
confint(bird_mdl_b)
rsq(bird_mdl_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

bird_mdl_c <- glm(log(para_prop + 0.0001) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  data = modeling_data_density,
                  weight = 1/site.varDRR.birds)
summary(bird_mdl_c)
confint(bird_mdl_c)
rsq(bird_mdl_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


bird_mdl_d <- glm(log(para_prop + 0.0001) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  data = modeling_data_density)
summary(bird_mdl_d)
confint(bird_mdl_d)
rsq(bird_mdl_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

# anovas

bird_an_a <- anova(bird_mdl_a, test = "F") %>% papeR::prettify() 
bird_an_b <- anova(bird_mdl_b, test = "F") %>% papeR::prettify() 
bird_an_c <- anova(bird_mdl_c, test = "F") %>% papeR::prettify() 
bird_an_d <- anova(bird_mdl_d, test = "F") %>% papeR::prettify() 


rbind(bird_an_a, bird_an_b, bird_an_c, bird_an_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 1") %>%
  tab_row_group(group = "Model 1d: Bird All Parasitism Proportion No Weighting", rows = 10:12) %>% 
  tab_row_group(group = "Model 1c: Bird All Parasitism Proportion With Weighting", rows = 7:9) %>% 
  tab_row_group(group = "Model 1b: Bird All Parasitism Quasibinomial No Weighting", rows = 4:6) %>%
  tab_row_group(group = "Model 1a: Bird All Parasitism Quasibinomial With Weighting", rows = 1:3) %>%
  gtsave(filename = "Model1_comparisons.docx")


##############
## tachinid
##############

## all
bird_mdl_t_a <- glm(cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density,
                  weight = 1/site.varDRR.birds)
summary(bird_mdl_t_a)
confint(bird_mdl_t_a)
rsq(bird_mdl_t_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


bird_mdl_t_b <- glm(cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density)
summary(bird_mdl_t_b)
confint(bird_mdl_t_b)
rsq(bird_mdl_t_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

bird_mdl_t_c <- glm(log(tach_prop + 0.0001) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  data = modeling_data_density,
                  weight = 1/site.varDRR.birds)
summary(bird_mdl_t_c)
confint(bird_mdl_t_c)
rsq(bird_mdl_t_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


bird_mdl_t_d <- glm(log(tach_prop + 0.0001) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  data = modeling_data_density)
summary(bird_mdl_t_d)
confint(bird_mdl_t_d)
rsq(bird_mdl_t_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

# anovas

bird_an_t_a <- anova(bird_mdl_t_a, test = "F") %>% papeR::prettify() 
bird_an_t_b <- anova(bird_mdl_t_b, test = "F") %>% papeR::prettify() 
bird_an_t_c <- anova(bird_mdl_t_c, test = "F") %>% papeR::prettify() 
bird_an_t_d <- anova(bird_mdl_t_d, test = "F") %>% papeR::prettify() 


rbind(bird_an_t_a, bird_an_t_b, bird_an_t_c, bird_an_t_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 2") %>%
  tab_row_group(group = "Model 2d: Bird Tachinid Parasitism Proportion No Weighting", rows = 10:12) %>% 
  tab_row_group(group = "Model 2c: Bird Tachinid Parasitism Proportion With Weighting", rows = 7:9) %>% 
  tab_row_group(group = "Model 2b: Bird Tachinid Parasitism Quasibinomial No Weighting", rows = 4:6) %>%
  tab_row_group(group = "Model 2a: Bird Tachinid Parasitism Quasibinomial With Weighting", rows = 1:3) %>%
  gtsave(filename = "Model2_comparisons.docx")



########
## hym
########

bird_mdl_h_a <- glm(cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density,
                  weight = 1/site.varDRR.birds)
summary(bird_mdl_h_a)
confint(bird_mdl_h_a)
rsq(bird_mdl_h_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

bird_mdl_h_b <- glm(cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density)
summary(bird_mdl_h_b)
confint(bird_mdl_h_b)
rsq(bird_mdl_h_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


bird_mdl_h_c <- glm(log(hym_prop + 0.0001) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  data = modeling_data_density,
                  weight = 1/site.varDRR.birds)
summary(bird_mdl_h_c)
confint(bird_mdl_h_c)
anova(bird_mdl_h_c, test = "F")
rsq(bird_mdl_h_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


bird_mdl_h_d <- glm(log(hym_prop + 0.0001) ~ site.delta.bird.LRR + HostPlant + cat_sp,
                  data = modeling_data_density)
summary(bird_mdl_h_d)
confint(bird_mdl_h_d)
rsq(bird_mdl_h_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

# anovas

bird_an_h_a <- anova(bird_mdl_h_a, test = "F") %>% papeR::prettify() 
bird_an_h_b <- anova(bird_mdl_h_b, test = "F") %>% papeR::prettify() 
bird_an_h_c <- anova(bird_mdl_h_c, test = "F") %>% papeR::prettify() 
bird_an_h_d <- anova(bird_mdl_h_d, test = "F") %>% papeR::prettify() 


rbind(bird_an_h_a, bird_an_h_b, bird_an_h_c, bird_an_h_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 3") %>%
  tab_row_group(group = "Model 3d: Bird Hymenoptera Parasitism Proportion No Weighting", rows = 10:12) %>% 
  tab_row_group(group = "Model 3c: Bird Hymenoptera Parasitism Proportion With Weighting", rows = 7:9) %>% 
  tab_row_group(group = "Model 3b: Bird Hymenoptera Parasitism Quasibinomial No Weighting", rows = 4:6) %>%
  tab_row_group(group = "Model 3a: Bird Hymenoptera Parasitism Quasibinomial With Weighting", rows = 1:3) %>%
  gtsave(filename = "Model3_comparisons.docx")


###########################
# fixed effect ant models
###########################

###############
## all
##############

ant_mdl_a <- glm(cbind(Num_Para, Not_Para) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density,
                  weight = 1/site.varDRR.ants)
summary(ant_mdl_a)
confint(ant_mdl_a)
rsq(ant_mdl_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ant_mdl_b <- glm(cbind(Num_Para, Not_Para) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density)
summary(ant_mdl_b)
confint(ant_mdl_b)
rsq(ant_mdl_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ant_mdl_c <- glm(log(para_prop + 0.0001) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  data = modeling_data_density,
                  weight = 1/site.varDRR.ants)
summary(ant_mdl_c)
confint(ant_mdl_c)
rsq(ant_mdl_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ant_mdl_d <- glm(log(para_prop + 0.0001) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  data = modeling_data_density)
summary(ant_mdl_d)
confint(ant_mdl_d)
rsq(ant_mdl_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


# anovas

ant_an_a <- anova(ant_mdl_a, test = "F") %>% papeR::prettify() 
ant_an_b <- anova(ant_mdl_b, test = "F") %>% papeR::prettify() 
ant_an_c <- anova(ant_mdl_c, test = "F") %>% papeR::prettify() 
ant_an_d <- anova(ant_mdl_d, test = "F") %>% papeR::prettify() 


rbind(ant_an_a, ant_an_b, ant_an_c, ant_an_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 4") %>%
  tab_row_group(group = "Model 4d: Ant All Parasitism Proportion No Weighting", rows = 10:12) %>% 
  tab_row_group(group = "Model 4c: Ant All Parasitism Proportion With Weighting", rows = 7:9) %>% 
  tab_row_group(group = "Model 4b: Ant All Parasitism Quasibinomial No Weighting", rows = 4:6) %>%
  tab_row_group(group = "Model 4a: Ant All Parasitism Quasibinomial With Weighting", rows = 1:3) %>%
  gtsave(filename = "Model4_comparisons.docx")


##############
## tachinid
##############

## all
ant_mdl_t_a <- glm(cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density,
                  weight = 1/site.varDRR.ants)
summary(ant_mdl_t_a)
confint(ant_mdl_t_a)
rsq(ant_mdl_t_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared



ant_mdl_t_b <- glm(cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density)
summary(ant_mdl_t_b)
confint(ant_mdl_t_b)
rsq(ant_mdl_t_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ant_mdl_t_c <- glm(log(tach_prop + 0.0001) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  data = modeling_data_density,
                  weight = 1/site.varDRR.ants)
summary(ant_mdl_t_c)
confint(ant_mdl_t_c)
anova(ant_mdl_t_c, test = "F")
rsq(ant_mdl_t_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


ant_mdl_t_d <- glm(log(tach_prop + 0.0001) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                  data = modeling_data_density)
summary(ant_mdl_t_d)
confint(ant_mdl_t_d)
rsq(ant_mdl_t_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

# anovas

ant_an_t_a <- anova(ant_mdl_t_a, test = "F") %>% papeR::prettify() 
ant_an_t_b <- anova(ant_mdl_t_b, test = "F") %>% papeR::prettify() 
ant_an_t_c <- anova(ant_mdl_t_c, test = "F") %>% papeR::prettify() 
ant_an_t_d <- anova(ant_mdl_t_d, test = "F") %>% papeR::prettify() 


rbind(ant_an_t_a, ant_an_t_b, ant_an_t_c, ant_an_t_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 5") %>%
  tab_row_group(group = "Model 5d: Ant Tachinid Parasitism Proportion No Weighting", rows = 10:12) %>% 
  tab_row_group(group = "Model 5c: Ant Tachinid Parasitism Proportion With Weighting", rows = 7:9) %>% 
  tab_row_group(group = "Model 5b: Ant Tachinid Parasitism Quasibinomial No Weighting", rows = 4:6) %>%
  tab_row_group(group = "Model 5a: Ant Tachinid Parasitism Quasibinomial With Weighting", rows = 1:3) %>%
  gtsave(filename = "Model5_comparisons.docx")



########
## hym
########

ant_mdl_h_a <- glm(cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                 family = quasibinomial(),
                 data = modeling_data_density,
                 weight = 1/site.varDRR.ants)
summary(ant_mdl_h_a)
confint(ant_mdl_h_a)
rsq(ant_mdl_h_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ant_mdl_h_b <- glm(cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                 family = quasibinomial(),
                 data = modeling_data_density)
summary(ant_mdl_h_b)
confint(ant_mdl_h_b)
rsq(ant_mdl_h_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ant_mdl_h_c <- glm(log(hym_prop + 0.0001) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                 data = modeling_data_density,
                 weight = 1/site.varDRR.ants)
summary(ant_mdl_h_c)
confint(ant_mdl_h_c)
rsq(ant_mdl_h_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ant_mdl_h_d <- glm(log(hym_prop + 0.0001) ~ site.delta.ant.LRR + HostPlant + cat_sp,
                 data = modeling_data_density)
summary(ant_mdl_h_d)
confint(ant_mdl_h_d)
rsq(ant_mdl_h_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

# anovas

ant_an_h_a <- anova(ant_mdl_h_a, test = "F") %>% papeR::prettify() 
ant_an_h_b <- anova(ant_mdl_h_b, test = "F") %>% papeR::prettify() 
ant_an_h_c <- anova(ant_mdl_h_c, test = "F") %>% papeR::prettify() 
ant_an_h_d <- anova(ant_mdl_h_d, test = "F") %>% papeR::prettify() 


rbind(ant_an_h_a, ant_an_h_b, ant_an_h_c, ant_an_h_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 6") %>%
  tab_row_group(group = "Model 6d: Ant Hymenoptera Parasitism Proportion No Weighting", rows = 10:12) %>% 
  tab_row_group(group = "Model 6c: Ant Hymenoptera Parasitism Proportion With Weighting", rows = 7:9) %>% 
  tab_row_group(group = "Model 6b: Ant Hymenoptera Parasitism Quasibinomial No Weighting", rows = 4:6) %>%
  tab_row_group(group = "Model 6a: Ant Hymenoptera Parasitism Quasibinomial With Weighting", rows = 1:3) %>%
  gtsave(filename = "Model6_comparisons.docx")


###########################
# bird and ant as separate terms
###########################

###############
## all
##############

ba_mdl_a <- glm(cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 family = quasibinomial(),
                 data = modeling_data_density,
                 weight = 1/site.varDRR.birds+(site.delta.bird.LRR + site.delta.ant.LRR ))
summary(ba_mdl_a)
confint(ba_mdl_a)
rsq(ba_mdl_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ba_mdl_b <- glm(cbind(Num_Para, Not_Para) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 family = quasibinomial(),
                 data = modeling_data_density)
summary(ba_mdl_b)
confint(ba_mdl_b)
rsq(ba_mdl_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ba_mdl_c <- glm(log(para_prop + 0.0001) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 data = modeling_data_density,
                 weight = 1/site.varDRR.birds+(site.delta.bird.LRR + site.delta.ant.LRR ))
summary(ba_mdl_c)
confint(ba_mdl_c)
rsq(ba_mdl_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


ba_mdl_d <- glm(log(para_prop + 0.0001) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 data = modeling_data_density)
summary(ba_mdl_d)
confint(ba_mdl_d)
rsq(ba_mdl_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


# anovas

ba_an_a <- anova(ba_mdl_a, test = "F") %>% papeR::prettify() 
ba_an_b <- anova(ba_mdl_b, test = "F") %>% papeR::prettify() 
ba_an_c <- anova(ba_mdl_c, test = "F") %>% papeR::prettify() 
ba_an_d <- anova(ba_mdl_d, test = "F") %>% papeR::prettify() 


rbind(ba_an_a, ba_an_b, ba_an_c, ba_an_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 7") %>%
  tab_row_group(group = "Model 7d: Bird Ant All Parasitism Proportion No Weighting", rows = 13:16) %>% 
  tab_row_group(group = "Model 7c: Bird Ant All Parasitism Proportion With Weighting", rows = 7:12) %>% 
  tab_row_group(group = "Model 7b: Bird Ant All Parasitism Quasibinomial No Weighting", rows = 5:8) %>%
  tab_row_group(group = "Model 7a: Bird Ant All Parasitism Quasibinomial With Weighting", rows = 1:4) %>%
  gtsave(filename = "Model7_comparisons.docx")


##############
## tachinid
##############

## all
ba_mdl_t_a <- glm(cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density,
                  weight = 1/site.varDRR.birds+(site.delta.bird.LRR + site.delta.ant.LRR ))
summary(ba_mdl_t_a)
confint(ba_mdl_t_a)
rsq(ba_mdl_t_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


ba_mdl_t_b <- glm(cbind(Num_Para_Tachinid, Not_Para) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                  family = quasibinomial(),
                  data = modeling_data_density)
summary(ba_mdl_t_b)
confint(ba_mdl_t_b)
rsq(ba_mdl_t_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ba_mdl_t_c <- glm(log(tach_prop + 0.0001) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                  data = modeling_data_density,
                  weight = 1/site.varDRR.birds+(site.delta.bird.LRR + site.delta.ant.LRR ))
summary(ba_mdl_t_c)
confint(ba_mdl_t_c)
rsq(ba_mdl_t_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


ba_mdl_t_d <- glm(log(tach_prop + 0.0001) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                  data = modeling_data_density)
summary(ba_mdl_t_d)
confint(ba_mdl_t_d)
rsq(ba_mdl_t_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

# anovas

ba_an_t_a <- anova(ba_mdl_t_a, test = "F") %>% papeR::prettify() 
ba_an_t_b <- anova(ba_mdl_t_b, test = "F") %>% papeR::prettify() 
ba_an_t_c <- anova(ba_mdl_t_c, test = "F") %>% papeR::prettify() 
ba_an_t_d <- anova(ba_mdl_t_d, test = "F") %>% papeR::prettify() 


rbind(ba_an_t_a, ba_an_t_b, ba_an_t_c, ba_an_t_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 8") %>%
  tab_row_group(group = "Model 8d: Bird Ant Tachinid Parasitism Proportion No Weighting", rows = 13:16) %>% 
  tab_row_group(group = "Model 8c: Bird Ant Tachinid Parasitism Proportion With Weighting", rows = 9:12) %>% 
  tab_row_group(group = "Model 8b: Bird Ant Tachinid Parasitism Quasibinomial No Weighting", rows = 5:8) %>%
  tab_row_group(group = "Model 8a: Bird Ant Tachinid Parasitism Quasibinomial With Weighting", rows = 1:4) %>%
  gtsave(filename = "Model8_comparisons.docx")


########
## hym
########

ba_mdl_h_a <- glm(cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 family = quasibinomial(),
                 data = modeling_data_density,
                 weight = 1/site.varDRR.birds+(site.delta.bird.LRR + site.delta.ant.LRR ))
summary(ba_mdl_h_a)
confint(ba_mdl_h_a)
rsq(ba_mdl_h_a, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ba_mdl_h_b <- glm(cbind(Num_Para_Hymenoptera, Not_Para) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 family = quasibinomial(),
                 data = modeling_data_density)
summary(ba_mdl_h_b)
confint(ba_mdl_h_b)
rsq(ba_mdl_h_b, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

ba_mdl_h_c <- glm(log(hym_prop + 0.0001) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 data = modeling_data_density,
                 weight = 1/site.varDRR.birds+(site.delta.bird.LRR + site.delta.ant.LRR ))
summary(ba_mdl_h_c)
confint(ba_mdl_h_c)
rsq(ba_mdl_h_c, adj = TRUE, type = "v") # variance-function-based adjusted r-squared


ba_mdl_h_d <- glm(log(hym_prop + 0.0001) ~ site.delta.bird.LRR + site.delta.ant.LRR + HostPlant + cat_sp,
                 data = modeling_data_density)
summary(ba_mdl_h_d)
confint(ba_mdl_h_d)
rsq(ba_mdl_h_d, adj = TRUE, type = "v") # variance-function-based adjusted r-squared

# anovas

ba_an_h_a <- anova(ba_mdl_h_a, test = "F") %>% papeR::prettify() 
ba_an_h_b <- anova(ba_mdl_h_b, test = "F") %>% papeR::prettify() 
ba_an_h_c <- anova(ba_mdl_h_c, test = "F") %>% papeR::prettify() 
ba_an_h_d <- anova(ba_mdl_h_d, test = "F") %>% papeR::prettify() 


rbind(ba_an_h_a, ba_an_h_b, ba_an_h_c, ba_an_h_d) %>% gt() %>% 
  tab_header(title = "Analysis of Deviance: Model 9") %>%
  tab_row_group(group = "Model 9d: Bird Ant Hymenoptera Parasitism Proportion No Weighting", rows = 13:16) %>% 
  tab_row_group(group = "Model 9c: Bird Ant Hymenoptera Parasitism Proportion With Weighting", rows = 9:12) %>% 
  tab_row_group(group = "Model 9b: Bird Ant Hymenoptera Parasitism Quasibinomial No Weighting", rows = 5:8) %>%
  tab_row_group(group = "Model 9a: Bird Ant Hymenoptera Parasitism Quasibinomial With Weighting", rows = 1:4) %>%
  gtsave(filename = "Model9_comparisons.docx")


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

