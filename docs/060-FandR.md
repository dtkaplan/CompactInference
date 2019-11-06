# F and R

We now have the pieces we need to assemble the central quantity which informs statistical inference. These are:

1. $n$, the sample size (or, more concretely, the number of rows in out data frame)
2. $v_r$, the variance of the response variable. $v_r$ for binary categorical response variables is based on the 0-1 encoding.
3. $v_m$, the variance of the model values.
4. $df$, the *degree of flexibility*.^[This is a non-standard name. The convention is to refer to the quantity $n - (df + 1)$ as the *degrees of **freedom***.]

We'll put these together to form a quantity called F. (The name, F, is in honor of Ronald Fisher, one of the leading statisticians of the first half of the 20th.) The formula for F is pretty simple, so I'll present it right here for ready reference.  

$$F \equiv \frac{n - (1 + df)}{df} \frac{v_m}{v_r - v_m}$$
For almost all the settings considered in introductory statistics courses, $df$ is 1, so the formula simplifies to:
$$F =  (n-1) \frac{v_m}{v_r - v_m}$$


## What's the meaning of F?

F combines the four quantities $n$, $v_r$, $v_m$, and $df$. To get a notion why the combination  works, keep these basic ideas in mind concerning what it means to have "more evidence."

- The larger $n$, the more evidence. That's why F is more-or-less proportional to $n$.  (Strictly speaking,  F is proportional to $n  - (1+df)$.)
- The more complicated the model -- e.g. the number of explanatory variables or levels in an explanatory categorical variable -- the less evidence. Or, put another way, we would want  more evidence from data to justify a complicated model than  a simple model. The division  by $df$ in the formula for F implements this idea.
- The closer the model values come to capturing the actual response variable, the greater the evidence that there is a relationship. An obvious 
way to quantify this closeness are with the difference $v_r - v_m$. We want the size of F to increase as  $v_m$  gets  closer  to  $v_r$. So F is proportional to  $\frac{1}{v_r - v_m}$.
- But the numerical value of the difference $v_r - v_m$ depends on the units in which the response variable  is measured.  For  instance, we could express the running  times in Chapter 1 in minutes or in seconds. But the difference $v_r - v_m$ would be $60^2 = 3600$ times larger if we  used seconds than minutes. Obviously we don't want our F value to depend on the units used. To avoid that, we divide $v_r - v_m$ by $v_m$, getting the $v_m / (v_r - v_m)$ in the formula for F.


## R-squared

Many people prefer to look at a ratio $v_m  / v_r$ to quantify how close the model values are to  the values of the response variable. If the model does a good job accounting for the response variable, then $v_m$ will be close to $v_r$. That is, the ratio will  be close to 1. On the other hand, if the model tells us little or nothing about  the response variable, $v_m$ will  be close to zero and the ratio itself  will be zero.

The  ratio has a famous name: *R-squared$,  that  is:

$$R^2 = v_m / v_r$$
Another, more  obscure name for $R^2$ is *coefficient of determination*, which is awkward but  does express the point  that $R^2$ is about  the extent to  which the explanatory variables, when  passed  through the model, determine the response variable.


- Biggest possible $R^2$ is 1,  which can only occur when the model values are exactly the same as the values of the  response variable.

$R^2$ is, literally, the faction of  the variation in the response variable that has been captured by the model. 

- $R^2$ is never negative. This is part of the reason why keeping  track of $df$ is important when there are multiple explanatory  variables, or, to be  more precise, multiple explanatory vectors. 

## F in statistics books

In most statistics book, F is not written in the form above but in one of a couple of alternative -- but  equivalent  -- forms. There's no particular reason to use these forms. Knowing what they look like  will help  you  make sense of traditional statistical reports.

Since $R^2$  summarizes the relationship  between $v_m$ and $v_r$, the formula for F can be written in terms of $R^2$. This is the first of the alternative forms.

$$F = \frac{n - (1+df)}{df} \frac{R^2}{1 - R^2}$$

Another alternative form comes from using an intermediate in the  calculation  of $v_m$ and $v_r$. Recall how the variance is calculated by calculating square differences and averaging. To average, of course, you  add together the quantities and  then  divide  by the  number of quantities  being averaged.

Suppose you didn't bother  to average, and stopped after adding up the square differences. The name for this intermediate is the  *sum of squares*.
F is often written in terms of the sum of squares of the response variable SS_r_ and of the model values SS_m_. Something like this:

$$F = \frac{n - (1+df)}{df} \frac{\mbox{SS}_m}{\mbox{SS}_r - \mbox{SS}_m}$$

More typically, instead instead  of  looking at the model  values directly,  the tradition  in  classical inference is to consider what's called the  *sum of squares of the residuals*, which is simply SSR = $\mbox{SS}_r - \mbox{SS}_m$ and the  formula is re-written like this:

$$F = \frac{\mbox{SS}_m / df}{SSR / (n -  (1+df))}.$$
Both the numerator and the denominator of this ratio have the form of a sum  of squares divided by a count. In the terminology of classical inference, such things are called *mean squares*. 

In this book, we'll just use the formula for F given at the start of this chapter. The others give exactly the same value, but let's avoid  having  ton work with potentially confusing  vocabulary such  as the  mean square and sum  of squares. 
