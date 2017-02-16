Poisson Regression
------------------

In this learning module, you'll be familiarized with **Poisson Regression** as a method for modeling *count data*. You'll frequently encounter a count outcomes, for example:

-   The number of tickets sold for a concert
-   The number of elected Republican congress members
-   The number of crimes that occur in a particular area

As you can imagine, you would want to leverage a statistical technique that assumes a **distribution of counts** for the outcome variable. One distrubtion that meets this constraint is the **poisson distribution**, which can be the assumed outcome distrubution of a **generalized linear model**. In the sections below, you'll review the poisson distribution, implement a Poisson regression, and interpret the results.

Resoures
--------

You may find the following resources helpful in learning about Poisson regression:

-   [UCLA Poisson Example](http://www.ats.ucla.edu/stat/r/dae/poissonreg.htm)
-   [Wikipedia: Poisson Regression](https://en.wikipedia.org/wiki/Poisson_regression)
-   [Regression Models for Data Science: Poisson Regression](https://leanpub.com/regmods/read#leanpub-auto-example-poisson-regression)

Poisson Distribution
--------------------

As you may recall from earlier in the course, the **Poisson Distribution** is a distribution of count values. The distribution is described by a **single parameter** lambda (*λ*). Note,

> In a Poisson distribution, the **mean** is equal to the **variance**. This is captured in the single parameter, lambda (*λ*).

The expected probability of observing *K* events is defined as:

$$ P\\left( k\\quad events \\right) =\\frac { { \\lambda }^{k  }{ e }^{-\\lambda  } }{  k!} $$
