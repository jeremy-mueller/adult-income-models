# Project Proposal
## Unit of Observation
A single observation in our dataset represents an individual.

## Features
For our features, we plan to use the following:

* age: Pay generally scales with age
* occupation: Some jobs pay more
* workclass: Some classes of work pay more
* education-num: Education typically linked with higher pay
* marital-status: Being able to afford a family likely indicates wealth
* hours-per-week: More work probably means lower hourly pay
* capital-gain/capital-loss: Positive net capital gains will likely indicate higher income

## Missing Values
We currently plan on just removing rows that have values missing from the above features as it won't result in too much of a data loss.

## Train/val/test Split
We will do a traditional 70/15/15 split for our training, validation, and test datasets. Models will be trained on the training set, validated during training on the validation set, and then evaluated at the end on the test set.

## Baseline Model
For our baseline model we will do a plain logistic regression created using the LogisticRegression class in the scikit-learn Python library.

## Advanced Model
Our advanced model will be a simple multi-layer perceptron model created and trained using the MLPClassifier class in scikit-learn. This should be able to learn relationships between the features better than the baseline model.

## Evaluation
Evaluation will be done using accuracy as it is simple to understand and commonly mentioned during our literature review for our dataset.

## Leakage Risk
idk
