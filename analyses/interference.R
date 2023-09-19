## Caterpillar complementarity analyses

setwd("C:/Users/mitchenc/OneDrive - UW-Eau Claire/Collaborations/caterpillar")

library(dplyr)
library(rsq)
library(ggplot2)

data <- read.csv("data/para_pred_analyze.csv", header = TRUE, stringsAsFactors = TRUE, na.strings = ".")
str(data)
data$Bird_treatment <- factor(data$Bird_treatment, levels = c("unbagged", "bagged"))


##############################################
##############################################
##############################################

# determine which combos of caterpillar and tree species have 5 or more observations
# also remove any with ant treatment of tangle

obs_limit = 5

bird_combos <- data %>% 
  filter(Ant_treatment != "tangle") %>% 
  group_by(Caterpillar_species, Tree_species, Bird_treatment) %>% 
  tally() %>% 
  filter(n >= obs_limit) %>%
  mutate(combo = paste(Caterpillar_species, "-", Tree_species))

bird_combos_bag <- bird_combos %>% 
  filter(Bird_treatment == "bagged")

bird_combos_unbag <- bird_combos %>% 
  filter(Bird_treatment == "unbagged")

bird_combos_final <- merge(bird_combos_bag, bird_combos_unbag, by = "combo")


# subset the data to meet above criteria
bird <- data %>% 
  filter(Ant_treatment != "tangle") %>% 
  mutate(combo = paste(Caterpillar_species, "-", Tree_species)) %>% 
  filter(combo %in% bird_combos_final$combo) %>%
  group_by(Caterpillar_species, Tree_species, Bird_treatment) %>% 
  summarize(Para = sum(Parasitized == "Y"),
            Not_Para = sum(Parasitized == "N"),
            H_Para = sum(Hym == "Y"),
            Not_H = sum(Hym == "N"),
            T_Para = sum(Tach == "Y"),
            Not_T = sum(Tach == "N"))



# run model with Para as outcome (H, T, or unidentified)
bird_mdl_both <- glm(cbind(Para, Not_Para) ~ Bird_treatment + Tree_species + Caterpillar_species,
                  family = quasibinomial(),
                  data = bird)
summary(bird_mdl_both)
confint(bird_mdl_both)
rsq(bird_mdl_both, adj = TRUE, type = "v")
plot(bird_mdl_both)

ggplot(data = bird, aes(x = Bird_treatment, y = (Para/(Para + Not_Para)))) + 
  geom_boxplot() + 
  scale_color_manual(values = c("#E69F00")) +
  geom_jitter() + theme_bw()


# run with tachinid as outcome
bird_mdl_tach <- glm(cbind(T_Para, Not_T) ~ Bird_treatment + Tree_species + Caterpillar_species,
                     family = quasibinomial(),
                     data = bird)
summary(bird_mdl_tach)
confint(bird_mdl_tach)
rsq(bird_mdl_tach, adj = TRUE, type = "v")
plot(bird_mdl_tach)

ggplot(data = bird, aes(x = Bird_treatment, y = (T_Para/(T_Para + Not_T)))) + 
  geom_boxplot() + 
  geom_jitter() + theme_bw()


# run with hymenopteran as outcome
bird_mdl_hym <- glm(cbind(H_Para, Not_H) ~ Bird_treatment + Tree_species + Caterpillar_species,
                     family = quasibinomial(),
                     data = bird)
summary(bird_mdl_hym)
confint(bird_mdl_hym)
rsq(bird_mdl_hym, adj = TRUE, type = "v")
plot(bird_mdl_hym)

ggplot(data = bird, aes(x = Bird_treatment, y = (H_Para/(H_Para + Not_H)))) + 
  geom_boxplot() + 
  geom_jitter() + theme_bw()


################################################
#################################################
################################################

# figure out what combos of caterpillar and tree species have XX or more observations
# also remove any with bird treatment of bagged

## set observation limit

#obs_limit = 15
#obs_limit = 10
#obs_limit = 8
obs_limit = 5

ant_combos <- data %>% 
  filter(Bird_treatment != "bagged") %>% 
  group_by(Caterpillar_species, Tree_species, Ant_treatment) %>% 
  tally() %>% 
  filter(n >= obs_limit) %>%
  mutate(combo = paste(Caterpillar_species, "-", Tree_species))

ant_combos_tang <- ant_combos %>% 
  filter(Ant_treatment == "tangle")

ant_combos_cont <- ant_combos %>% 
  filter(Ant_treatment == "control")

ant_combos_final <- merge(ant_combos_tang, ant_combos_cont, by = "combo")

# subset the data to meet above criteria
ant <- data %>% 
  filter(Bird_treatment != "bagged") %>% 
  mutate(combo = paste(Caterpillar_species, "-", Tree_species)) %>% 
  filter(combo %in% ant_combos_final$combo) %>% # just those that have 15+ observations
  group_by(Caterpillar_species, Tree_species, Ant_treatment) %>% 
  summarize(Para = sum(Parasitized == "Y"),
            Not_Para = sum(Parasitized == "N"),
            H_Para = sum(Hym == "Y"),
            Not_H = sum(Hym == "N"),
            T_Para = sum(Tach == "Y"),
            Not_T = sum(Tach == "N"))


# run model with Para as outcome (H, T, or unidentified)
ant_mdl_both <- glm(cbind(Para, Not_Para) ~ Ant_treatment + Tree_species + Caterpillar_species,
                     family = quasibinomial(),
                     data = ant)
summary(ant_mdl_both)
confint(ant_mdl_both)
rsq(ant_mdl_both, adj = TRUE, type = "v")
plot(ant_mdl_both)

ggplot(data = ant, aes(x = Ant_treatment, y = (Para/(Para + Not_Para)))) + 
  geom_boxplot() + 
  geom_jitter() + theme_bw()


# run model with tachnid as outcome
ant_mdl_tach <- glm(cbind(T_Para, Not_T) ~ Ant_treatment + Tree_species + Caterpillar_species,
                     family = quasibinomial(),
                     data = ant)
summary(ant_mdl_tach)
confint(ant_mdl_tach)
rsq(ant_mdl_tach, adj = TRUE, type = "v")
plot(ant_mdl_tach)

ggplot(data = ant, aes(x = Ant_treatment, y = (T_Para/(T_Para + Not_T)))) + 
  geom_boxplot() + 
  geom_jitter() + theme_bw()


# run model with hymenopteran as outcome
ant_mdl_hym <- glm(cbind(H_Para, Not_H) ~ Ant_treatment + Tree_species + Caterpillar_species,
                    family = quasibinomial(),
                    data = ant)
summary(ant_mdl_hym)
confint(ant_mdl_hym)
rsq(ant_mdl_hym, adj = TRUE, type = "v")
plot(ant_mdl_hym)

ggplot(data = ant, aes(x = Ant_treatment, y = (H_Para/(H_Para + Not_H)))) + 
  geom_boxplot() + 
  geom_jitter() + theme_bw()


## get summary stats

bird_sum <- bird %>% 
  select(-Bird_treatment)
ant_sum <- ant %>% 
  select(-Ant_treatment)

sum_data <- rbind(bird_sum, ant_sum)
sum_data %>% 
  mutate(total_para = sum(Para))

sum(sum_data$Para, na.rm = TRUE)
sum(sum_data$Not_Para, na.rm = TRUE)
