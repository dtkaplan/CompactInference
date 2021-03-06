# Simple means and proportions


$\newcommand{\flex}[]{^\circ\!{\cal{F}}}$

The presentation  of classical inferene in this compact guide does not  follow the historical flow of how inferential concepts were developed, largely over  the half century from 1880 to 1925. Instead we started  with F, which dates from 1925, introducing it in the context of models, an even more recent concept. Models provide a means to address contemporary uses of data.

Historically, inference started with very simple-sounding questions involving a single variable. For instance, after observing a mental-health patient's sleep over several days, a reasonable presentation of how much sleep the patient got is the the mean over those days. Or, in a more contemporary context, imagine being interested in the trend toward self-driving cars. A reasonable summary of the deployment of the technology could be the  proportion  of cars on  the road with self-driving features such as lane-keeping or automatic collision-avoidance braking.

Very often, behind the interest in a mean or proportion is a different interest: a change in mean or a change in proportion. For such questions, models and F are the way to go. But in this chapter we'll journey into means and proportions themselves.

## The standard error of the mean and the proportion

We all learned early in our schooling that the mean is calculated by adding up the numbers and dividing by $n$. For instance, the mean of 6, 5, and 10 is 21/3 = 7.

We also learned that if we have 15 pieces of fruit, of which 5 are oranges, the proportion of oranges is 5 / 15 = 1/3. But think about the fruit proportion using an indicator variable which will be 1 for oranges and 0 otherwise. The proportion of oranges will be exactly the mean of the indicator variable. In this sense, means and proportions are the same thing.

So we'll focus on the standard error of the mean and not worry about proportions.

Every instructor of statistics knows the classical result: the standard error of the mean is $s / \sqrt{n}$, where $s$ is the standard deviation of the values. In this book we're not using  standard errors--instead we use margins of error, which for 95% confidence are just twice the standard error:

$$\mbox{margin of error} = 2\frac{s}{\sqrt{n}}$$

Similarly, instructors know about a test statistic called t which is the mean divided by the standard error:

$$ t = \sqrt{n}\ \frac{m}{s}$$ 
where $m$ is the mean.

$|t| > 2$ is the threshold for rejecting the null hypothesis (at least for large $n$).

These formulas seem completely different than the ones presented in earlier chapters for models. Traditionally, we teach the standard error of the mean first (with a special but equivalent version for the standard error of the probability).

I've done the opposite. Now I'm having to introduce special-purpose formula for the simplest of settings: inference on a single mean.

I think the underlying problem is that calculations such as a single mean don't involve one of the basic components of modeling, explanatory variables. Or, if they did, the explanatory variable would be simply a constant; hardly a variable (and in modeling we even call it an "intercept").

## Equivalencies with B, F, and v_m

There is a very strong connection between the classical formulas for t and the standard error and the formulas for F and the margin of error presented much earlier in the book. In particular:

$$t^2 = n \frac{m^2}{v_r} \equiv F \ \ \mbox{when}\ \flex = 0$$
and 

$$\mbox{margin of error} = 2 \frac{s}{n} = m \sqrt{4/F}$$

In other words, there is an equivalence between the F & B formalism presented earlier and the t & standard error formalism classically developed for means.

I doubt that these equivalences are helpful in teaching. So I think it is necessary to introduce new formulas to handle confidence intervals and hypothesis testing on the mean.

## t and z

Although the standard error of the mean of an indicator variable is the same  as the standard error of the corresponding  proportion, there is a slight difference in the critical values for very small $n$. 

I've been advocating using the simple critical value $F^\star =  4$. This, of course, corresponds to  $z^\star =  2$. So I think it's perfectly reasonable not  to  distinguish between  the  2  that comes from  $z^\star$ and the 2 that comes from $\sqrt{F^\star}$ for moderate and large n, even though there is a theoretical argument  to be made that the two 2s are different.
