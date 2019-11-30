--- 
title: "A Compact Guide to Classical Inference"
author: "Daniel Kaplan"
date: "2019-11-30"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib]
biblio-style: apalike
link-citations: yes
description: ""
---

\Large

# Preface {-}

Statistical inference is the heart of many contemporary college-level statistics courses. By far the most common way of teaching inference features algebraic formulas for standard errors and test statistics. Probability tables are then used to scale standard errors into confidence intervals and translate test statistics into p-values. 

Generations of students have been taught using this "standard-error curriculum." Its difficulties and pedagogical shortcomings are well known. Students in general have a hard time with algebra. Even for those select students who are confident reading and interpreting formulas, the tractable formulas for inference work only with simple statistics -- means, proportions, slopes -- in settings with at most two variables. When it comes time to deal with other statistical settings, new and seemingly unrelated methods are introduced. For instance, inference on tables of counts or on multiple means does not involve calculating a standard error, but uses other statistical procedures such as $\chi^2$ and ANOVA, each of which comes with a new table for the corresponding probability distributions. 

Both students and instructors perceive standard-error statistics as a confusing collection of specialized tools. To improve student learning, instructors long for a reduction in the number of topics needed to support statistical thinking. This book is a roadmap for instructors who wish to simplify inference while continuing to teach using traditional tools. 

Simplified does not mean simplistic. The strategy for teaching provided by this book produces answers that fully comply with legitimate uses of statistical inference. How? Conventionally, the logic of introductory inference recapitulates the historical route to the development of statistical concepts from  1880 to 1910. Instead of following every twist and turn in that path, this book uses modern modeling terminology -- response and explanatory variables, functions, model output -- and the concepts of analysis of variance developed around 1925.

For the "non-traditional" instructor who embraces modern computing, there is an important and effective alternative approach to inference based on simulation, randomization, and statistical bootstrapping. (See, e.g., @lock5, @ISRS, @tintle-investigations, @modern-dive.) But for many instructors, particularly those strongly oriented toward mathematics rather than computing, the formula-based line of attack seems more natural. With formulas, there is a unique correct answer, while with randomization there is a process generating answers that differ (somewhat) from one realization to another. The formulas build on the strong mathematics traditions of exactitude and using algebraic notation; they look like math. 

In many traditional, formula-based curricula, computers are not used: a calculator and a set of printed probability tables are sufficient to the task. This is only tenable because the task has been defined in a narrow way. It excludes modern data graphics. And it precludes any careful examination of confounding and the acknowledgement that many important questions can only be addressed by considering the relationships among multiple variables. 

I hope that this little book can help instructors see that statistical inference can be handled as one topic among the many needed for modern statistics. Inference, important though it be, does not need to be such a sprawling set of methods and details taking  up  so much of the introductory  course that other essential topics get neglected.

*Daniel Kaplan, December 2019, Saint Paul, Minnesota*
 




