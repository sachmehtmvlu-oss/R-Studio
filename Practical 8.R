# Create data

score <- c(75, 78, 80, 82,
           
           70, 72, 74, 76,
           
           85, 88, 90, 92,
           
           80, 82, 84, 86)


method <- factor(rep(c("Online", "Offline"), each = 8))

gender <- factor(rep(c("Male", "Female"), times = 8))


data <- data.frame(score, method, gender)


# Two-way ANOVA with interaction

anova_result <- aov(score ~ method * gender, data = data)


# Display results

summary(anova_result)
