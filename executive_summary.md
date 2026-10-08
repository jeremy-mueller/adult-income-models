## Overview / Problem Statement
Using Census data on educational and employment traits, this project evaluates predictive models designed to identify wealth management prospects earning over $50,000. To ensure we capture every potential client without bias, our review focused on two key areas: model reliability and demographic fairness.

## Data & Approach
**Data:** We analyzed approximately 46,000 cleaned records using the key features: age, work class, education level, marital status, occupation, hours worked, and capital gains/losses, which directly signal earning potential.

**Metric Selection:** We prioritized **Recall** at a tuned **0.3 decision threshold**. Missing a high earner forfeits major revenue, whereas sending an extra digital ad costs almost nothing.

**Our Review Process:** We evaluated model reliability by running a leakage check on capital gains/losses, and tested fairness by seeing if adding race and sex attributes back into the model would reduce bias gaps.

## Key Findings
**Overall Model Comparison:** The Stronger Model outperforms the Baseline across all tested decision thresholds. At our target cutoff, it increases our client capture rate (Recall) from 77.2% to 80.1%, successfully identifying more high-value prospects.

**Leakage Check (Pass):** The model passed our reliability review. Removing capital gain and capital loss caused only a 1.1% drop in client capture (80.1% to 79.0%). This confirms the model relies on stable career indicators rather than temporary investment gains.

**Fairness Check (Needs Improvement):** Re-introducing race and sex for our fairness check revealed a persistent **14% gender gap** (83% male vs. 68% female recall). Excluding demographic traits fails to eliminate bias, as indirect indicators carry the disparity.

## Recommendation / Bottom Line
**Do not use this model to run automatic marketing campaigns until we fix the gender bias.**

While the 0.3 threshold captures ~80% of high-value leads, deploying as-is systematically misses qualified female prospects. Use the model strictly as an internal staff guide rather than an automated decision maker.

## Limitations & Next Steps
**Limitations**: This analysis relies on historical 1994 Census data, which may not reflect current income patterns or wealth management market conditions. Additionally, removing demographic attributes fails to eliminate underlying bias.

**Next Steps**: Investigate feature-weighting adjustments to eliminate the 14% gender gap and validate model performance against more recent financial datasets.
