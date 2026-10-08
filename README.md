# Adult Income Prediction Models

## Dataset

We'll be using the UCI Adult dataset where we will predict whether an individual's income is above or at/below $50K.

[UCI Adult dataset](https://archive.ics.uci.edu/dataset/2/adult)

## Team
* **Jeremy Mueller** - *I'm looking forward to getting more comfortable with Git and working in a team.*
* **Parker Krcmar** - *Nervous about using GitHub and Git for the first time ever.*

## Setup and Running
This repository is done in Python using Jupyter Notebook. To install all the required packages, run:
```
pip install -r requirements.txt
```
Then, in your terminal, open Jupyter with
```
jupyter notebook
```
Open notebook.ipynb, and run each cell in sequence to train and evaluate the models.

## Repository Layout
|File|What it is|
|---|---|
|README.md|Project overview + team|
|notebook.ipynb|Data cleaning, model creation, metric results|
|explainability.ipynb|Global and local explainability examples|
|fairness_leakage_test.ipynb|Tests to show fairness/identify leakage|
|proposal.md|Problem framing, features, and decisions|
|executive_summary.md|Nontechnical summary|
|ai_use_log.md|Summary of AI use in project|
|literature_review.md|Research prior work using this dataset|
|data/adult.csv|UCI Adult dataset|
| requirements.txt | Python library dependencies to reproduce environment |
| results.md | Comparison tables of baseline vs. final model metrics across thresholds |
