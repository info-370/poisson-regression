# Analysis

# Code and data from http://www.ats.ucla.edu/stat/r/dae/poissonreg.htm

# Data prep 
p <- read.csv("~/Documents/info-370/poisson-regression/data/poisson_sim.csv", stringsAsFactors = FALSE)
p <- within(p, {
  prog <- factor(prog, levels=1:3, labels=c("General", "Academic", "Vocational"))
  id <- factor(id)
})

# Create a histrogram of the outcome variable
hist(p$num_awards, xlab="Num. Awards", ylab = "Count", main="Distribution of Awards Received")

# Generate a Poisson model of our data
m1 <- glm(num_awards ~ prog + math, family="poisson", data=p)

# Calculate exponentiated betas
exp(m1$coefficients)

# Generate predictions that are in the same space as the response
p$preds <- predict(m1, p, type = 'response')

# Get p value associated with the chi-square statistic
chi.sq <- sum(residuals(m1, type = "pearson")^2)
p.value <- pchisq(chi.sq, m1$df.residual)

# Calculate deviance p value
deviance.p.value <- pchisq(m1$deviance, m1$df.residual, lower.tail=FALSE)

