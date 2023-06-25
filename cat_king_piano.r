#1. Read in Libraries to Assist with Analysis
# Install packages
install.packages("ggplot2")
install.packages("dplyr")
# Load packages
library(ggplot2)
library(dplyr)

#2. Read in Sample Dataset
# Read in a sample dataset
dat <- read.csv(file="dataset.csv", header=TRUE, sep=",")

#3. Create Visualizations of the Dataset
# Summary Statistics
summary(dat)

# Histogram of Age
ggplot(data = dat, aes(x = Age)) +
 geom_histogram(fill="dodgerblue", color="black") +
  ggtitle("Histogram of Age") +
   xlab("Age") +
    ylab("Frequency")

# Boxplot of Age by Gender
ggplot(data = dat, aes(x = Gender, y = Age)) +
 geom_boxplot(fill="dodgerblue", color="black") +
  ggtitle("Boxplot of Age by Gender") +
   xlab("Gender") +
    ylab("Age")

#4. Create Presentations
# Create PowerPoint presentation describing the dataset
# Create slides summarizing the dataset
# Create slides visualizing the dataset
# Create slide summarizing the results of the analyses

#5. Conduct Statistical Analysis of the Dataset
# T-test of Age by Gender
t.test(Age ~ Gender, data = dat) 

# ANOVA of Age by Gender
aov.out <- aov(Age ~ Gender, data = dat)
summary(aov.out)

# Correlation Analysis of Age and Longevity
cor.test(dat$Age, dat$Longevity, method="pearson")

#6. Create Reports of Analyses
# Create report summarizing the dataset
# Create report summarizing the results of the analyses
# Create report summarizing the findings

#7. Lead Aging and Longevity Workshops
# Design and implement workshop agenda
# Create workshop materials
# Develop interactive activities for participants
# Deliver engaging and educational workshop presentation
# Facilitate workshop discussions
# Respond to participant questions and comments
# Promote further resources for learning and exploration