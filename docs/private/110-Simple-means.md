# Simple means and proportions

The presentation  of classical inferene in this compact guide does not  follow the historical flow of how inferential concepts were developed, largely over  the half century from 1880 to 1925. Instead we started  with F, which dates from 1925, introducing it in the context of models, an even more recent concept. Models provide a means to address contemporary uses of data.

Historically, inference started with very simple questions involving a single variable. For instance, after observing a mental-health patient's sleep over several days, a reasonable presentation of how much sleep the patient got is the the mean over those days. Or, in a more contemporary context, imagine being interested in the trend toward self-driving cars. A reasonable summary of the deployment of the technology could be the  proportion  of cars on  the road with self-driving features such as lane-keeping or automatic braking before a collision.

Very often, behind the interest in a mean or proportion is a different interest: a change in mean or a change in proportion. For such questions, models and F are the way to go. But in this chapter we'll journey into neans and proportions themselves.

##  No flexibility: df = 0

We seen that models can be constructed with more or less flexibility, e.g.  more or fewer explanatory variables, more or fewer levels in a categorical variable. It is possible to think about a simple mean or a simple proportion in terms of a model, but it is a strange model with *no explanatory variables*. That is, it is a model with $df = 0$.

Consider the general formula for F:

$$ \mbox{F} \equiv \frac{n - (1+df)}{df} \frac{v_m}{v_r - v_m}$$

Since F involves division by $df$, the ratio is indeterminate. Or, in the words of your third-grade teacher, "You're not allowed to divide by zero." 

But $df=0$ is not the only thing going on when doing inference on a mean or proportion. The model itself is unusual. Because there is no explanatory variable, the model has no input.  A function with no input can, mathematically, have only one value for the output. And so the model values will always be the same. This implies $v_m = 0$. As for  the  effect size of the model, there's no changing output and no input to change, so the usual definition of change-in-output / change-in-input doesn't  apply.

In the spirit of discussion (as  opposed to mathematical proof), let's imagine  filling in the values $df=0$ and $v_m=0$ into the formula for F  and let's take the effect size B to be the (constant) model output itself. For F we get

$$\mbox{F}  = \frac{n - 1}{0} \frac{0}{v_r} \approx \frac{n-1}{v_r}\ \ \ \ \mbox{WARNING: Cancelling out zeros is not legit.}$$



Using that F, and ignoring its illegitimate derivation, we can find the CI with the usual CI formula,

$$CI = B (1 \pm \sqrt{4/\mbox{F}}) = B (1 \pm 2 \sqrt{n-1} / s_r).$$
What's $s_r$. It's simply $s_r \equiv  \sqrt{v_r}$.

It turns out that this expression for CI, however sketchy the means of arriving  at it, is correct. We got to the right answer by making two  mistakes that cancelled out.

In classical inference, the quantity

$$\mbox{SE} = \frac{s_r}{\sqrt{n-1}}$$ 

has a name: the standard error (SE) of the mean. And $s_r$ itself has a name: the standard deviation of the (response) variable.

When it comes to interpreting the F value itself, the mistakes we made don't cancel out. The correct value for F is

$$\mbox{F} \equiv (B / \mbox{SE})^2 = (n-1) \frac{B^2}{v_r}$$

This quantity was invented decades before F was introduced to statistics. Strictly speaking, the quantity that was invented is the square root of the above  and it is given the name *t*:

$$\mbox{t}  = B / SE.$$

Hypothesis tests that were based on t were called "t-tests," a name that will  be familiar to anyone who took a conventional statistics course.
