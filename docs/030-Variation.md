# Measuring variation

Recall that the purpose of statistical inference is to determine which statistical claims are justified by the data. This amounts to asking whether the data provide enough evidence to support a claim. How can we quantify "how much is enough."

An obvious, and important way to quantify how much evidence the data provide is the number of rows in the data frame, that is, the *sample size* $n$. Perhaps it's intuitive that more data constitutes more evidence. A little care is  required here, since we want to avoid phony creation of large sample sizes by copying  earlier rows to make new rows in the data frame. A simple way to describe a proper procedure is to insist that each unit of analysis be grabbed at random from the *population* of all the possible units. A data frame constructed by such a procedure is called a *sample of  the population*, which is why the number of rows $n$ is called the sample size.

It's tempting way elaborate *how much* evidence we have by counting the number of variables in the data frame. But there is a serious problem here. When grabbing a unit from the population, we have a real thing. But there is no such thing as the "set of possible variables." It's the researcher who determines what will be a variable, and you can in  principle make  up  as  many as you  like. In the running example from Chapter 1, the variables were age and running time. Sensible. But we might also have recorded the runner's favorite number, or the time the runner's brother had breakfast the Tuesday before  the race, or anything else, relevant or not. Common sense tells you to avoid such silliness. But what one person considers silly might be sensible to someone else. For instance, many people take seriously astrological signs, but others don't. Should we count astrological sign as a genuine variable? As it happens, birth month accounts for some  of the observed differences in performance of professional athletes. (The reason appears to be that children who  are the oldest in their school grade do better as kids in athletics, which leads to them developing confidence and interest in sports and receiving extra attention from coaches.)

The key to measuring *how much* evidence the data provides lies in the sentence, "Birth month accounts for some of the observed differences in performance." What matters is whether a variable can *explain* or *account* for the variation in a outcome of interest (like athletic performance). In quantifying  this, we need to be able to say how much variation  there is in the outcome -- which we'll select as the response variable -- and compare  this to how much  of that variation is accounted for by the explanatory variable(s).

## Variance of a numerical variable

We can quantify the amount of variation in a response variable in many different ways. The conventional way is by a quantity called the *variance*.

There are different ways to calculate the variance of a variable. Most textbooks give a formula that can be used efficiently by a computer. For the purpose of explaining the variance to another person, I like another way.

The starting point is the quantitative variable for which you want to know the variance. Usually, we organize variables into data frames, but for the moment imagine that the individual numbers,  $n$ of them, have  been spilled out on  the surface of a table. Take two of the numbers at random will do. Chances are, the two numbers are different but they might, by luck, be exactly the same. Doesn't matter. To measure the variation of these two numbers, simply subtract one from the other to get the difference, then square the difference. Because of the squaring, it doesn't matter whether you subtract the first number from the second or *vice versa*.  For historical reasons, the variance is the square  difference divided by two. But if history had worked out differently, the square difference would have been a fine measure of variation itself.

The square difference measures  the variation between two numbers. But we want  to  measure the variation of the whole set of numbers. To do this, repeat the calculation of the square difference for *every possible pair of numbers on the table*. For instance, if there were $n=3$ numbers, say 

$$5, 9,  3$$ 
the pairs would be 

- 5 - 9 giving a  difference of -4 which squares  to  16
- 5 - 3 giving a difference of 2, which squares to 4
- 3 - 9 giving a difference of -6, which squares to 36

Now average all the square differences, in this example 16, 4, 36.  The average  is 56 / 3 = 18.67. The variance, by  historical  convention,  is half this number, or 9.33.

When $n$ is big, there are a lot of possible pairs of numbers. For  instance,  when $n = 100$, there  are 4950 pairs. That's why  we leave it to the computer to do the calculation, and even then the calculation is re-arranged so that there are only 100 square differences involved.  

[INCLUDE THIS] But sometimes you might want to estimate the variance by eye from a graphic showing the values. Use 80% summary interval and square, then divide by 2.

If you like, you can think of the reason why we square the difference as a convenience to avoid having  to worry about whether the difference is positive or negative (which depends only on which of the  pair of values you put first in  the subtraction). But there is some profound thinking behind the use of squares, which reflects the nature  of randomness and, believe it or not, the Pythagorean theorem.

## Variance of a categorical variable

A categorical variable has distinct *levels*, usually represented by labels such as *agree*, *undecided*, and *disagree*. To describe the amount of variation in a categorical variable we can follow  the same process as for numerical variables: spill the collection of $n$ labels onto a table, pick at random  a  pair of labels, subtract them, and square the difference. 

There's a big problem, however. What is the numerical value of the difference between *agree* and *undecided*? How does the size of the difference between *agree* and *undecided* compare  to the difference between *disagree* and *undecided* or between *agree* and *disagree*?  Sometimes there's a reasonable choice to be made, for example  we might decide that *agree* and *disaggree* differ by  2,  *agree* and  *undecided*  differ by 1, and that *disagree* and *undecided* also differ by 1. Even more basic, it's reasonable to say that the difference between *agree* and *agree* should be zero, and similarly for *disagree* versus  *disagree* or *undecided* versus *undecided*. 

Notice that all these declared differences can be created  by recoding the categorical variable as a numeric variable. For instance, we can change *agree* to 1, *undecided* to  2, and *disagree*  to 3.  Then just calculate the variance of the  numerical variable in the usual  way.

Sometimes it's sensible to translate the levels  of a categorical variable into numbers. For instance, with  *agree*/*undecided*/*disagree* it's reasonable to think that *undecided* is inbetween *agree* and *disagree*. But, in general, there will be no such sense of inbetweenness of categorical levels. Take, for  example, a categorical variable  whose levels are the names of countries. Or a categorical variable whose levels are political parties: Green, Libertarian, Democratic, Republican. Which levels are between which? (As it happens, people do try to  put  political parties in sequential order by categorizing them on the scale from Left to Right. This tends to vary between issues, however.)

Without a sense of *inbetweenness* of levels, it's arbitrary to assign numbers to the various levels. Except ... in one situation.

Often, categorical variables have only two levels. Yes or no. Dead or alive. Accepted or rejected. Treatment and control. Such variables are sometimes called *binary* (like the 0/1 of computer bits) or *dicotomous*  or  *binomial* (meaning, having two names) or even  *two-level*. When dealing with a binary variable, there's no level to be inbetween; there's only two levels and the idea of "in between" requires at least three distinct things. So we can easily agree, regardless of our opinions about how the world works, that the  difference is zero between labels that  are the same (say, *yes* and *yes* or  between *no* and *no*). And when the labels are different (say, *yes* and *no*) we just need to assign a non-zero number to the difference.

Which number? Should the square-difference between *yes* and *no* be 17, or 328, or  0.3? By convention, we use the number 1 for the square-difference between the two levels of a binary variable. This convention has the advantage of simplifying calculations. But there is another  important  advantage of  the simple choice:  any average of a 0/1 variable must always be somewhere in the range from 0 to 1, which is exactly the same scale we use for describing *probability*.

The simplicity of dealing with binary variables means that the techniques of statistical  inference  with a binary,  categorical response variable are much easier than for non-binary, categorical  response variables. This  is  also  the most common setting for classical inference. We'll deal with statistical  inference on numeric and 0/1 variables (which are effectively  numeric) in this book, leaving questions of inference on non-binary categorical response variables for another time.




