# Importing data from excel

library('readxl')
library('ggplot2')
library('tidyverse')
library('dplyr')
library('dslabs')
library('ggthemes')
library("gridExtra")
library("cowplot")
library("showtext")
library("gridExtra")

## TABLE OF CONTENTS ##

#load the data into R from excel
fifteen <- read_excel('C:\\Users\\jacqu\\Documents\\DATA\\MASTER.xlsx', sheet = 'fifteen')
twentyfive <- read_excel('C:\\Users\\jacqu\\Documents\\DATA\\MASTER.xlsx', sheet = '25')

fifteen <- read_excel('C:\\Users\\jacqu\\Documents\\DATA\\MASTER.xlsx', sheet = '15')

#scatterplot
R_L_fifteen <- fifteen %>% ggplot(aes(Age, Bias, color = Foot)) + #ggplot with x and y
  geom_point(size = 3) +
  scale_x_continuous(name = "Age", #names the continuous x-axis
                     limit = c(50,80), #sets the limits of the x-axis
                     breaks = c(50, 55, 60, 65, 70, 75, 80)) + #sets the tick marks for the axis
  scale_y_continuous((name = "Bias: Standard = 15°"), #names the continuous y-axis
                     breaks = c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)) +
  theme_bw() + #sets the theme to plane
  theme(panel.border = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"))+
  theme(axis.title.y = element_text(vjust = 2, size = 15), 
        axis.text = element_text(color = "black", size = 12), 
        axis.title.x = element_text(color = "black", vjust = 0, size = 15))
R_L_fifteen 
  

#smoothed 15
R_L_fifteen <- fifteen %>% ggplot(aes(Age, Bias, color = Foot, shape = Foot, fill = Foot)) + #ggplot with x and y
  geom_smooth(method="lm")+
  geom_point(size = 3) + 
  theme_bw() + 
  scale_x_continuous(name = "Age", #names the continuous x-axis
                     limit = c(50,80), #sets the limits of the x-axis
                     breaks = c(50, 55, 60, 65, 70, 75, 80)) + #sets the tick marks for the axis
  scale_y_continuous((name = "Bias: Standard = 15°"), #names the continuous y-axis
                     breaks = c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)) +
  theme_bw() + #sets the theme to plane
  theme(panel.border = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"))+
  theme(axis.title.y = element_text(vjust = 2, size = 15), 
        axis.text = element_text(color = "black", size = 12), 
        axis.title.x = element_text(color = "black", vjust = 0, size = 15))
R_L_fifteen 

#smoothed 25
R_L_twentyfive <- twentyfive %>% ggplot(aes(Age, Bias, color = Foot, shape = Foot, fill = Foot)) + #ggplot with x and y
  geom_smooth(method="lm")+
  geom_point(size = 3) + 
  theme_bw() + 
  scale_x_continuous(name = "Age", #names the continuous x-axis
                     limit = c(50,80), #sets the limits of the x-axis
                     breaks = c(50, 55, 60, 65, 70, 75, 80)) + #sets the tick marks for the axis
  scale_y_continuous((name = "Bias: Standard = 15°"), #names the continuous y-axis
                     breaks = c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5)) +
  theme_bw() + #sets the theme to plane
  theme(panel.border = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black")) +
  theme(axis.title.y = element_text(vjust = 2, size = 15), 
        axis.text = element_text(color = "black", size = 12), 
        axis.title.x = element_text(color = "black", vjust = 0, size = 15))
R_L_twentyfive