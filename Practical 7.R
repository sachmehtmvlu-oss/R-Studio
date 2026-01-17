# Create data
score <- c(65, 70, 68, 72, 75,
           78, 82, 80, 85, 88,
           90, 92, 95, 93, 91)
group <- factor(c("A","A","A","A","A",
                  "B","B","B","B","B",
                  "C","C","C","C","C"))
data <- data.frame(score, group)
# Perform one-way ANOVA
anova_result <- aov(score ~ group, data = data)
# Display result
summary(anova_result)
