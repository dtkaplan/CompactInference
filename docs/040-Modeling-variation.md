# Modeling variation



The point of statistics is to understand how things vary. For instance, human height varies from one person to another. Some of that variation is associated with the sex  of the person: women *tend to be* slightly shorter than men. Some of  the variation in  height relates to genes and genetic variation. Some to differing nutrition and general health.

Statistical models attempt to use the variation in explanatory variables -- sex, genetic traits -- to account for the variation in a response variable. To offer a contemporary example, some automobiles are involved in fatal accidents and some (the vast majority, thankfully!) are not. It varies. What's behind the variation? It could be the weather conditions at  the time. It could also be human driver fatique, inebriation, incompetence, distraction, etc. It could also be characteristics of the vehicle itself: size, weight, maneuvrability, breaking power, physical wear, automatic breaking, etc. And a lot of the variation is a matter of chance: for instance, the arrival of another car at an intersection at a particular instant. 

## Statistical models

For our purposes, a statistical model is a mathematical function that takes values of the explanatory variables as input and  produces a corresponding output. For instance, a model of a person's height might take the person's age, sex, mother's height and father's height as inputs and give as output a specific number that we interpret as a kind of idealization of the height of all  the people who have the same values for those inputs. It might happen, by accident, that the model is exactly on target for our particular person. More likely, though, the model output will be somewhat off: the person is somewhat shorter or taller than the model says. This is to be expected since the model can't take into account every factor that influences height and because chance also plays a role.

## Quantitative response variables

Consider the model (and data) shown in Figure 4.1. These are Galton's records on the heights of adult children in London families. In Figure 4.1, `height` has been selected as the response variable. To keep the example simple, the role of explanatory variable has been assigned to `sex`. The statistical model takes as input a level of  `sex` and  produces as output a numerical value for the response variable. 

\begin{figure}\includegraphics[width=0.8\linewidth]{040-Modeling-Variation_files/figure-latex/galton-0-1} \caption[Figure 4.1]{Figure 4.1: Galton's height measurements with height as the response variable and sex as the explanatory variable. The model gives a single output for each level  of  the explanatory variable.}\label{fig:galton-0}
\end{figure}

As you can see, the output of the model is about 64 inches when sex is F, and 69 inches when sex is M. The preceeding sentence uses stilted language. A straightforward rendering would be something like this: According to the model, women are 64 inches tall and men are 69 inches. But the straightforward account is misleading. While some women are 64 inches tall, the large majority are not,  and similarly for men. Neither would it be correct to say that women are shorter than men. Some are and some aren't.

Another mis-statement is that "the *average* woman is shorter than the *average* man." Such language originates in the 1830s, when the idea was that there was an ideal type, from which the the individual might "deviate." 

If your goal is to describe the relative heights of men and women, better a statement that incorporates the intrinsic variation in height between individuals. For instance, "The large majority of women fall into the range 60 to 68 inches, while the large majority of men are between 65 and  73 inches tall."

How were the model outputs determined? Or, in other words, what method was used to construct the model? For now, the details are unimportant. The primary  point is that the kind of model being shown describes the *center* of the distribution of individuals. A secondary point is that the model methodology is standard and automatic;  the model outputs were established strictly using `sex` as the explanatory variable without consideration of anything else and without room for a human to manipulate the numbers or shade them into a preferred direction.

The model in Figure 4.1 has an explanatory variable that is categorical. Figure 4.2 is an example where the explanatory variable is numeric. The question that motivated Galton to collect  the height data in the first place was to characterize the genetics of height: the extent to which it's fair to say that a child inherits the height of his or her parents.


\begin{figure}\includegraphics[width=0.8\linewidth]{040-Modeling-Variation_files/figure-latex/galton-2-1} \caption[Figure 4.2]{Figure 4.2:  Child's height versus the mother's height. A conventional form of model is a straight line.}\label{fig:galton-2}
\end{figure}

Consider first the model as a function. The input is the explanatory variable, mother's height. The output is a number. So, for an input of 60 inches, the output is about 66 inches. For an input  of 68 inches, the output is somewhat higher: about 68 inches.

The model output discribes the *center* of the distribution of adult-child heights. That center is somewhat lower among the children  of relatively short mothers than it is among the children of relatively tall mothers. Note that hardly any individuals match the model output generated at their mother's height; almost all are either shorter or taller.

Some people mistakenly believe that the point of such a model is to *predict* the child's height. Putting aside the question of why anyone would want to do this (perhaps you are wanting to buy a college graduation gown for your pregnant friend's baby?), any meaningful prediction should be framed as an interval. So, for a 60-inch tall mother, a fair prediction would be for a child between 58 and 73 inches, while for a relatively tall 68-inch mother, the prediction would be 62 to 76 inches. What use is that?

Galton's objective in collecting the data was to say *how much* of the variation in height is attributable to genetics. For the record, Figure 2 would be interpreted  as the mother's height accounting for about 4% of the variation in height among children. (Note that it's 4% of the *variation* in height among children, not 4% of the height of an individual child.)

Four percent doesn't seem like much. Indeed, looking at Figure 2 and asked to draw a *central* model, you couldn't fault someone for drawing a level line, that is, one where the model output doesn't change at all with mother's height. This is where statistical inference can play an important scientific role. It allows us to detect in a  justifiable way very small connections between variables. Key to detecting something small is to avoid false detections: claiming that there is a connection when the data provides little justification. So much of statistical inference has to do with avoiding such false claims.

## Categorical response variables

The previous examples involved models where the response variable is numeric. Statistical  models are also appropriate for situations where the response variable is categorical.

Things are particularly straightforward when the categorical response variable has two levels: yes/no, alive/dead, succeed/fail, etc. The reason this is straightforward is that a binary categorical variable can be translated without loss into a numerical encoding.

To illustrate, consider some data from another approach to quantifying genetics by *experimental manipulation*. This tradition started with Gregor Mendel in the 1860s, who famously cross bred peas. Students of genetics know the name Mendel. Another famous name is Reginald Punnett (as in the Punnett square), whose cross-breeding work was done around 1905.

In one experiment, Punnett cross bred sweet peas and observed the flower color (binary levels white/other) and the shape of pollen granules (binary levels round/long). A few rows of data (translated to a modern format) from this experiment are shown in Figure 1.4 in Chapter 1. The complete data  are graphed in Figure 4.3, below. 

\begin{figure}\includegraphics[width=0.8\linewidth]{040-Modeling-Variation_files/figure-latex/punnett-1-1} \caption[Figure 4.3]{Figure 4.3: Punnett's data from cross breeding peas, along with a model of flower color versus pollen shape.}\label{fig:punnett-1}
\end{figure}

There are only four possible combinations of white/other and long/round. To avoid plotting  the rows directly on top of one another, the dots have been *jittered*. You can see that peas with "other" color and long pollen grains are the most common.

The model here is very similar to that of Figure 4.1.  The response variable, flower color, has been translated into 0/1. The model provides an output for each level of the explanatory variable, pollen shape. Notice that the model output is not set in terms of white/other, but as a number. The model output is usually interpreted as a probability. For instance, when the pollen shape is long, the model output is just under 0.25, meaning that about a quarter of the plants had white flowers. When the pollen is round, the model value is a little heigher but not much. Again about a quarter of the plants with round pollen had white flowers. (Is  the claim justified by the data  that the probability is higher for round-pollen  plants than for long-pollen plants?  Statistical inference provides an answer to this question.)

You can pretty much draw functions like this by hand. Mathematically, though, there are some restrictions. First, the function has to stay as close to the data as possible.  Second, the function has to stay centered on the data. (Technically, the function form has to include an intercept.) It might be easiest to understand these restrictions by looking at some crazy bad functions that don't honor the restrictions, like the one in Figure 4.3.

\begin{figure}\includegraphics[width=0.8\linewidth]{040-Modeling-Variation_files/figure-latex/fig-4-3-1} \caption[Figure 4.3]{Figure 4.3: The function in red is a bad match to the data. It strays from the data at the extremes. The blue function has the same form -- a straight line -- but is a legitimate match to the data.}\label{fig:fig-4-31}
\end{figure}
\begin{figure}\includegraphics[width=0.8\linewidth]{040-Modeling-Variation_files/figure-latex/fig-4-3-2} \caption[Figure 4.3]{Figure 4.3: The function in red is a bad match to the data. It strays from the data at the extremes. The blue function has the same form -- a straight line -- but is a legitimate match to the data.}\label{fig:fig-4-32}
\end{figure}
  

Note that the blue functions in Figure 4.3 are centered in the sense that whatever value for the explanatory variable you look at, the data points are just about evenly distributed above and below the function. The red functions don't accomplish this.

The previous examples have all involved a response variable and a *single* explanatory variable. Since variables can be either numerical or quantitative, logic suggests there are four possible settings for models, of which we've seen three.  Figure 4.4 shows the fourth setting,  a categorical response variable and a numerical explanatory variable.

\begin{figure}\includegraphics[width=0.8\linewidth]{040-Modeling-Variation_files/figure-latex/galton-logistic-1} \caption[Figure 4.4]{Figure 4.4: A model with a binary categorical response variable and a numerical explanatory variable.}\label{fig:galton-logistic}
\end{figure}

Again, the model output is numeric, in the form of the probability  that the child is female. The model suggests that 60-inch tall mothers are slightly less likely to bear girls and 68-inch tall mothers. As  you  might expect, the model output is around 50% regardless of the mother's height.  

Perhaps you're surprised to see that the mother's height is related to the sex of the baby. Don't be surprised yet, because we haven't shown that such  a statement is justified by the data: we have a setting for inference but have not yet carried out the inference calculations to tell us if the statement is justified.

In  this section, I've sketched out four settings for statistical modeling with different combinations of categorical/numeric for the response and explanatory variables. In all settings,  exactly the same technique, called *linear regression*, has been used to match the model to the data. I'll summarize this with a table that shows the four combinations and refers you to the corresponding table. 

  | response var | explanatory var | Figure  |  conventional name
--|--------------|-----------------|---------|--------
1 | quantitative | categorical     |   4.1   | groupwise means / t-test
2 | quantitative | quantitative    |   4.2   | linear regression / slope test
3 | categorical (binary) | categorical | 4.3  | groupwise proportions / p-test
4 | categorical (binary) | quantitative| 4.4 | not usually included in introductory statistics

Recognizing that many readers have studied statistics before, I've added to the table the conventional name assigned to the inferential test in that setting in introductory statistics. Also, for the conventionally-trained reader, I acknowledge that the term *linear regression* is conventionally applied only to setting 2. But there is no good reason for this: all four settings can be handled with exactly the same modeling process.

