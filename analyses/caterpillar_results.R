# Author: Nora Mitchell
# Code to make plots for results for enemy-reduced space paper
# 19 October 2022: initial plot-making
# 20-21 October 2022: results plot edits, supplementary results plots
# 04-05 January 2023: results plots for complementarity

rm(list = ls())

library(tidyverse)
library(cowplot)

setwd("C:/Users/mitchenc/OneDrive - UW-Eau Claire/Collaborations/caterpillar")

# read in data
data <- read.csv("model_results_for_plotting.csv", stringsAsFactors = TRUE)
str(data)

# make risk and response into factors, re-order
data$Risk <- factor(data$Risk, levels = c("Bird", "Ant", "Both"))
data$Response <- factor(data$Response, levels = c("All", "Tachinid", "Hymenopteran"))

# plot for main results
models_plot <- ggplot(data = data, aes(x = Log_Odds, y = Predictor, color = Predictor)) + 
  geom_point() + 
  geom_vline(xintercept = 0, lty = "dashed") +
  geom_errorbar(aes(xmin = CI_low, xmax = CI_high), width=.2) +
  facet_grid(Risk ~ Response, scales = "free") +
  scale_color_manual(values = c("#E69F00", "#0072B2")) +
  theme_bw()
models_plot

ggsave(filename = "caterpillar_results_plot_2.pdf", models_plot, width = 7, height = 5)


#### supplementary plots

data <- read.csv("supp_model_results_for_plotting.csv", stringsAsFactors = TRUE)
str(data)

data$Risk <- factor(data$Risk, levels = c("Bird", "Ant", "Both"))
data$Response <- factor(data$Response, levels = c("All", "Tachinid", "Hymenopteran"))
data$y_axis <- factor(data$y_axis, levels = c("d", "c", "b", "a", "d_ant", "c_ant", "b_ant", "a_ant", "d_bird", "c_bird", "b_bird", "a_bird"))

supp_models_plot <- ggplot(data = data, aes(x = Log_Odds, y = y_axis, color = Predictor)) + 
  geom_point(aes(shape = y_axis, size = Model_letter)) + 
  scale_shape_manual(values=c(15, 18, 17, 19, 
                              15, 18, 17, 19, 
                              15, 18, 17, 19)) +
  scale_size_manual(values=c(2,2,3,2)) +
  geom_vline(xintercept = 0, lty = "dashed") +
  geom_errorbar(aes(xmin = CI_low, xmax = CI_high), width=.2) +
  facet_grid(Risk ~ Response, scales = "free") +
  scale_color_manual(values = c("#E69F00", "#0072B2")) +
  theme_bw()
supp_models_plot

ggsave(filename = "supp_caterpillar_results_plot.pdf", supp_models_plot, width = 7, height = 5)



##############################
### complementarity figure ###
##############################

# https://stackoverflow.com/questions/65887187/how-to-display-two-categorical-variables-on-one-tile-of-a-heatmap-triangle-til

comp_data <- read.csv("parasitismEFS_complete.csv", header = TRUE, na.strings = "NA")
colnames(comp_data)

comp_group <- comp_data %>% 
  group_by(HostPlant, species) %>% 
  summarize(Num_Para = sum(Num_Para_Hymenoptera),
            Not_Para = sum(Not_Para),
            delta.bird.LRR = mean(site.delta.bird.LRR)) %>% 
  mutate(para_ratio = Num_Para / Not_Para)
comp_group <- data.frame(comp_group)

comp_group_long <- comp_group %>% 
  select(HostPlant, species, para_ratio, delta.bird.LRR) %>% 
  pivot_longer(names_to = "attributes", values_to = "measurements", cols = c(para_ratio, delta.bird.LRR))
               
make_triangles <- function(x, y, point = "up") {
  x <- as.integer(as.factor((x)))
  y <- as.integer(as.factor((y)))
  
  if (point == "up") {
    newx <- sapply(x, function(x) {
      c(x - 0.5, x - 0.5, x + 0.5)
    }, simplify = FALSE)
    newy <- sapply(y, function(y) {
      c(y - 0.5, y + 0.5, y + 0.5)
    }, simplify = FALSE)
  } else if (point == "down") {
    newx <- sapply(x, function(x) {
      c(x - 0.5, x + 0.5, x + 0.5)
    }, simplify = FALSE)
    newy <- sapply(y, function(y) {
      c(y - 0.5, y - 0.5, y + 0.5)
    }, simplify = FALSE)
  }
  data.frame(x = unlist(newx), y = unlist(newy))
}


# required, otherwise you cannot use the values as fill
mydat_wide <- comp_group_long %>% pivot_wider(names_from = "attributes", values_from = "measurements")

# making your ordered months factor
mydat_wide$HostPlant <- factor(mydat_wide$HostPlant)
mydat_wide$species <- factor(mydat_wide$species)

# The actual triangle computation
newcoord_up <- make_triangles(mydat_wide$HostPlant, mydat_wide$species)
newcoord_down <- make_triangles(mydat_wide$HostPlant, mydat_wide$species, point = "down")

# just a dirty trick for renaming
newcoord_down <- newcoord_down %>% select(xdown = x, ydown = y)

# you need to repeat each row of your previous data frame 3 times
repdata <- map_df(1:nrow(mydat_wide), function(i) mydat_wide[rep(i, 3), ])
newdata <- bind_cols(repdata, newcoord_up, newcoord_down)

complementarity_plot <- ggplot(newdata) +
  geom_polygon(aes(x = x, y = y, fill = para_ratio, group = interaction(species, HostPlant)), color = "black") +
  scale_fill_gradient(low = "white", high = "red", limits = c(0, 0.75)) +
  ggnewscale::new_scale_fill() +
  geom_polygon(aes(x = xdown, y = ydown, fill = delta.bird.LRR, group = interaction(species, HostPlant)), color = "black") +
  scale_fill_gradient(low = "blue", high = "white", limits = c(-2.7, 1.3)) +
  scale_x_continuous(breaks = seq_along(unique(mydat_wide$HostPlant)), 
                     labels = unique(levels(mydat_wide$HostPlant))) +
  scale_y_continuous(breaks = seq_along(unique(mydat_wide$species)),
                     labels = unique(sort(mydat_wide$species)))+
  coord_equal() + theme_cowplot()
complementarity_plot

ggsave(filename = "complementarity_plot_draft.pdf", complementarity_plot, width = 7, height = 10)

###################################
## complementarity mirror charts ##
###################################

# bird predation, hymenopteran parasitism

comp_group2 <- comp_data %>% 
  group_by(species) %>% 
  dplyr::summarize(Num_Para = sum(Num_Para_Hymenoptera),
            Not_Para = sum(Not_Para),
            delta.bird.LRR = mean(site.delta.bird.LRR)) %>% 
  mutate(para_ratio = Num_Para / Not_Para)
comp_group2 <- data.frame(comp_group2)

library(forcats)
comp_group2 <- comp_group2[order(comp_group2$para_ratio),]
comp_group2  <- comp_group2 %>%
  mutate(name = fct_reorder(species, para_ratio))
  
range01 <- function(x){(x-min(x, na.rm = TRUE))/(max(x, na.rm = TRUE)-min(x, na.rm = TRUE))}

comp_complete <- comp_group2[complete.cases(comp_group2), ]


complementarity_plot2 <- ggplot(comp_complete, aes(x = name, y = range01(para_ratio))) +
  geom_col(fill = "#CC79A7", color = "white") +
  geom_col(data = comp_complete, fill = "#0072B2", aes(x = species, y = -range01(delta.bird.LRR))) +
  coord_flip() +
  theme_cowplot()
complementarity_plot2
ggsave(filename = "complementarity_plot_draft_2.pdf", complementarity_plot2, width = 7, height = 10)


## bird predation, tachinid parasitism

comp_group3 <- comp_data %>% 
  group_by(species) %>% 
  dplyr::summarize(Num_Para = sum(Num_Para_Tachinid),
                   Not_Para = sum(Not_Para),
                   delta.bird.LRR = mean(site.delta.bird.LRR)) %>% 
  mutate(para_ratio = Num_Para / Not_Para)
comp_group3 <- data.frame(comp_group3)


comp_group3 <- comp_group3[order(comp_group3$para_ratio),]
comp_group3  <- comp_group3 %>%
  mutate(name = fct_reorder(species, para_ratio))

range01 <- function(x){(x-min(x, na.rm = TRUE))/(max(x, na.rm = TRUE)-min(x, na.rm = TRUE))}

comp_complete2 <- comp_group3[complete.cases(comp_group3), ]


complementarity_plot3 <- ggplot(comp_complete2, aes(x = name, y = range01(para_ratio))) +
  geom_col(fill = "#CC79A7", color = "white") +
  geom_col(data = comp_complete2, fill = "#0072B2", aes(x = species, y = -range01(delta.bird.LRR))) +
  coord_flip() +
  theme_cowplot()
complementarity_plot3
ggsave(filename = "complementarity_plot_draft_3.pdf", complementarity_plot3, width = 7, height = 10)

## bird predation, all parasitism

comp_group4 <- comp_data %>% 
  group_by(species) %>% 
  dplyr::summarize(Num_Para = sum(Num_Para_Tachinid+Num_Para_Hymenoptera),
                   Not_Para = sum(Not_Para),
                   delta.bird.LRR = mean(site.delta.bird.LRR)) %>% 
  mutate(para_ratio = Num_Para / Not_Para)
comp_group4 <- data.frame(comp_group4)


comp_group4 <- comp_group4[order(comp_group4$para_ratio),]
comp_group4  <- comp_group4 %>%
  mutate(name = fct_reorder(species, para_ratio))

range01 <- function(x){(x-min(x, na.rm = TRUE))/(max(x, na.rm = TRUE)-min(x, na.rm = TRUE))}

comp_complete3 <- comp_group4[complete.cases(comp_group4), ]


complementarity_plot4 <- ggplot(comp_complete3, aes(x = name, y = range01(para_ratio))) +
  geom_col(fill = "#CC79A7", color = "white") +
  geom_col(data = comp_complete3, fill = "#0072B2", aes(x = species, y = -range01(delta.bird.LRR))) +
  coord_flip() +
  theme_cowplot()
complementarity_plot4
ggsave(filename = "complementarity_plot_draft_4.pdf", complementarity_plot4, width = 7, height = 10)



##########################
## interference results ##
##########################

# read in data
data <- read.csv("data/interference_results.csv", stringsAsFactors = TRUE)
str(data)

# make risk and response into factors, re-order
data$Risk <- factor(data$Risk, levels = c("Bird", "Ant"))
data$Response <- factor(data$Response, levels = c("All", "Tachinid", "Hymenopteran"))

data_final <- data %>% 
  filter(MinObs == 5)

# plot for main results
models_plot <- ggplot(data = data_final, aes(x = Estimate, y = Risk, color = Risk)) + 
  geom_point() + 
  geom_vline(xintercept = 0, lty = "dashed") +
  geom_errorbar(aes(xmin = CI_low, xmax = CI_high), width=.2) +
  facet_grid(Risk ~ Response, scales = "free") +
  scale_color_manual(values = c("#E69F00", "#0072B2")) +
  theme_cowplot()
models_plot

ggsave(filename = "caterpillar_results_interference_n5.pdf", models_plot, width = 7, height = 3.5)
