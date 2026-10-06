# Literature Review: Adult Income Dataset

## Feature Selection

Our model retains `age`, `workclass`, `education-num`, `marital-status`, `occupation`, `hours-per-week`, `capital-gain`, and `capital-loss` as the key numerical and categorical predictors for income level. 

Other features are dropped to simplify the analysis and reduce noise:
* `fnlwgt` and `native-country`: Dropped because `fnlwgt` is mostly sampling noise and `native-country` is overwhelmingly skewed toward the United States.
* `education`: Dropped because `education-num` already represents the exact same educational attainment in a numerical format.
* `relationship`, `sex`, and `race`: Dropped to streamline demographic variables and avoid redundancy, relying on `marital-status` alongside job-related categories (`workclass` and `occupation`) to capture household income dynamics.

## Missing Values

The dataset has two main data quality issues: missing values (marked as `?`) and variables with very different scales. Previous projects handle these using two main approaches:

* **Dropping rows:** Since missing values only affect a small percentage of total records in categorical features like `workclass` and `occupation`, removing those rows is a common choice that preserves plenty of clean data without introducing synthetic bias.
* **Imputation:** Alternative setups fill in missing values using the mean or mode to avoid throwing away any rows.


---

## References

* Brownlee, J. (2020). *Imbalanced Classification with the Adult Income Dataset*. Machine Learning Mastery. https://machinelearningmastery.com/imbalanced-classification-with-the-adult-income-dataset/
* ML with Ramin. (2023). *Project S23 Group 8: Adult Census Income Analysis*. https://www.mlwithramin.com/project/s23-group-8