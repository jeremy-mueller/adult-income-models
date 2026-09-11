## Model Evaluation Strategy
Selected Metric: **F1**

## Metric Justification
Standard classification accuracy is misleading on the Census Adult Income dataset due to its ~75/25 class distribution. A model predicting '<=50k' for every sample achieves 75% accuracy, but has zero predictive capability for high earners. 

**Fixed-Threshold:** Our prediction model used the default 0.5 threshold. At this time we are unlikely to change that, and F1 score works well at that stable, default threshold. 

**Symmetric Cost Assumption:** We don't have a specific application of the prediction model (no real cost effect), therefore we don't have a preference in higher Precision or Recall percentages. F1 score weighs Precision and Recall equally, effectively treating False Positives (wrongly labeling a low earner as high-income) and False Negatives (missing an actual high earner) as equally costly mistakes.

**Exposing Hidden Errors:** At first glance, our baseline model looks well performing with an **84.4% Accuracy**. The confusion matrix truly reveals lots of False Negatives. F1 score ignores easily predicted True Negatives and penalizes these missed positve cases, pulling down out baseline performance to a more honest value. 