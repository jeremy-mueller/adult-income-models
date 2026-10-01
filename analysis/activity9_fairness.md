# Part A
|Group|n|Base rate|Selected|Precision|Recall|
|-|-|-|-|-|-|
|Male|6501|0.309|0.251|0.775|0.630|
|Female|3177|0.098|0.061|0.794|0.494|

## A1
**Which number differs most between the two rows? Write what it means as a sentence about people, not about metrics.**

The base rate differs the most between the two rows. This means that the share of men that earn more than $50K is greater than the share of women that earn more than $50K.

## A2
**Precision is *higher* for women, 0.800 against 0.771. That sounds like the model treats women better. Does it? Look at the *Selected* column before you answer.**

It doesn't mean that the model treats women better. All it means is that 79.4% of the women it predicted to earn greater than $50K actually do, while it only recalled 49.4% of the women that earn greater than $50K correctly.

# Part B
|Group|n|Base rate|Selected|Precision|Recall|
|-|-|-|-|-|-|
|Male|6501|0.309|0.256|0.767|0.638|
|Female|3177|0.098|0.060|0.802|0.494|

## B1
**Write the recall gap for each model. Did removing sex close it?**

Model A: 0.137\
Model B: 0.144

Removing sex actually increased the recall gap. 

## B2
**The model can no longer see sex at all. So how is it still treating the two groups differently? Name the feature doing the work.**

A combination of occupation, marital_status, and relationship is likely causing this. This dataset was created in 1996 based on 1994 census data. An entry that was unemployed but married/in a relationship during this time period was likely a woman.

## Part C
## C1
**Men are selected at 0.259 and women at 0.055. Should those rates be equal? The base rates in this data are 31.0% and 9.4%. Argue one side in three sentences.**

These rates should not be equal. The base rates are grounded in the data, which show that men are more likely to earn greater than $50K. We should not skew the selection at all in an attempt to make them equal when it is not representative of the data.

## C2
**You could lower the threshold for women until recall matches. What would that cost, and who pays?**

Lowering the threshold for women until the recall matches would cause a decrease in the precision for women, meaning that we would be increasing the number of women who are falsely flagged as earning greater than $50K.

## C3
**You are asked to deploy this tomorrow for a decision that affects real people. Yes or no, and name the *one number* you would watch weekly, with the value that would make you stop the model.**

I would not deploy this model as the numbers currently stand. I would have to wait until the recall for women reaches at least in the 0.600 range for me to trust it enough.

## C4
**A bank uses this model to decide who gets an unsolicited premium offer. Only the people it flags get products, so only they generate records, and those records become next year’s training data. Model B flags *5.5%* of women and 25.9% of men. What happens to those numbers after three cycles, and what would you do about it?**

After three cycles, the percentage of people in each group who get flagged would likely decrease as records are only generated on those who get products. You would need to lower the threshold for flagging for both groups to ensure that the base rates for future datasets stay at a consistent level.