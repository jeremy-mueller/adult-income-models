# Model Evaluation Strategy & Metric Justification

## 1. Baseline Model Performance

### Confusion matrix:
| | Predicted '<=50K' | Predicted '>50K' |
| :--- | :---: | :---: |
| **Actual '<=50K' (Negative)** | 9,628 (TN) | 763 (FP) |
| **Actual '>50K' (Positive)** | 1,392 (FN) | 2,027 (TP) |

### Core Metrics Summary
| Metric | Value |
| :--- | :---: |
| Accuracy | 84.4% |
| Precision | 72.7% |
| Recall | 59.3% |
| F1-Score | 0.653 |
| ROC-AUC | 0.898 |

---

## 2. Why Accuracy is Misleading

Standard classification accuracy is misleading on the Census Adult Income dataset due to its ~75/25 class distribution. A model predicting '<=50k' for every sample achieves 75% accuracy, but has zero predictive capability for high earners. 

The confusion matrix from our model exposes the limitation of accuracy. It missed 1,392 out of 3,419 actual high earners, resulting in a 40.7% error rate on the positive class. Accuracy conceals this failure because of the high volume of True Negatives, therefore we look elsewhere for a metric. 

---

## 3. Targeted Scenario & Metric Solution

### Deployment Context: Wealth Management Direct Marketing
We evaluate this model under a targeted **Wealth Management Direct Marketing** scenario. The business objective is to identify potential high earners (>50k) to receive premium financial service offers. 

### Error Cost Analysis
- False Positive (FP = 763): Misclassifying a low earner as high-income results in a wasted ad impression or brochure. Regardless, it's a low, fixed operational cost.
- False Negative (FN = 1,392): Failing to identify an actual high earner results in a lost customer opportunity. This loses significant long-term revenue, so this is a high risk outcome we want to avoid. 

### Primary Metric Selection: F1 (0.653)
We select **F1** as our primary evaluation metric. 

- **Why not pure Recall?** Evaluating on pure Recall would reward a model that predicts >50k for every customer. Doing so would destroy the marketing budget by sending promotions to all 13,810 individuals. 
- **Why F1 works:** F1 works better because it is the harmonic mean of Precision and Recall. It forces the model to capture high earners, while holding a reasonable budget. 
