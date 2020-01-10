# Remember, inference isn't everything




Study design, sampling bias, etc.

## Confounding

MAYBE ... Cornfield 1959's rebuttal of Fisher. Note that we are out of the era  of classical inference. Cornfield showed that the common cause of smoking and cancer would have to be unplausibly strong in order to rule out a direct link from smoking to cancer.


# Some history

Jerome Cornfield considering Fisher's proposal that a confounder, not smoking, is responsible for lung cancer and the *observed* correlation of smoking with cancer.  Reading: [Schield-1999](/articles/Cornfields-conditions.pdf)

The question  he addressed: How strong would the hypothetical confounder have to be to account entirely for the observed relationship between smoking and cancer?

In the following A = smoking, B = Fisher's confounder. The risk ratio, r, was already known  to be about 9.

> *If an agent, A, with no causal effect upon the risk of a disease, nevertheless, because of a positive correlation with some other causal agent, B,  shows an apparent risk, r, for those exposed to A, relative to those not so exposed, then the prevalence of B, among those exposed to A, relative to the prevalence among those not so exposed, must be greater than r.* --  Cornfield J et al. *Smoking and lung cancer: recent evidence
and a discussion of some questions*. JNCI 1959;22:173–203. Reprint available [here](http://www.statlit.org/CP/Cornfield/2009-Int-J-Epidemiol-Reprint-1959-Cornfield.pdf).


Traditionally, introductory statistics courses emphasize the idea that "correlation is not causation." This is only  true  in  the sense that knowing that there is a correlation  between X and Y does not tell you which way the direct causal link between X and Y, if any, goes.

I prefer to say that "correlation *is* causation." 

a. X $\rightarrow$ Y
b. X $\leftarrow$ Y
c. X $\leftarrow$ C $\rightarrow$ Y
d. X $\rightarrow$ C $\leftarrow$ Y

There are other possibilities that are variations on (c) and (d) with a causal connection between X and Y, for instance

![](images/X-C-Y.png)      or   ![](images/three-RRR.png)

Idea of confounding interval ... Accept that there might be confounding along the lines of the diagrams above.


<img src="140-Inference-isnt-everything_files/figure-html/unnamed-chunk-2-1.png" width="672" />
# A proposed policy

1. Did a perfect experiment? No need for plausible confounding  bounds.
2. Did a real experiment? Use *weak* plausible confounding bounds.
3. Know a lot about  the system you're observing and confident that the  significant confounders have been adjusted for? Use *weak* plausible confounding bounds.
4. Not sure what all the confounders might be, but controlled for the ones you know about? Use moderate plausible confounding bounds.
5. Got some data and you want to use it to figure out the relationship between X and Y? Use strong  plausible confounding  bounds.


## Techniques when "degrees of freedom" are unknown,  as  with machine  learning methods.
