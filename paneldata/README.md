# Causal Inference with Panel Data

[Xiaonan Wang](https://github.com/Xiaonan21) and [Kee Hyun Park](https://github.com/keehyunpark)

Last updated: March 9, 2021

## Video and Slides

A video of the presentation can be found [here](https://www.dropbox.com/s/0dwhfvulb6owaed/causal-inference-panel-data-kpark-xwang.mp4?dl=0).

Shorter version of slides used for presentation are available [here](https://github.com/gsa-gvpt/gvpt-methods/blob/master/paneldata/slides_paneldata_short.pdf). Please note that all the references used for the presentation are included in the last 3 pages of the slides.

## Description

In this workshop, we discuss both classic and recent literature on causal inference using panel data, with difference-in-differences as a special case. We highlight the potential outcomes approach to panel data, its core assumptions, challenges, and practical solutions. The workshop mainly consists the following parts:

1) A brief review of the potential outcome framework
2) Show different structures of panel data (e.g. difference-in-differences, staggered adoption, treatment reversal, etc.) with panel data visualization tools
3) Introduce key causal assumptions and inferences under the canonical difference-in-differences design
4) Review two-way fixed effects (2FE) linear regression, a popular approach used in general panel data settings with multiple units, multiple periods and varying structures of treatment adoptions
5) Introduce the conditions under which causal inference using 2FE model is problematic
6) Introduce relatively easy-to-apply methods that can improve two-way fixed effects model

## Statistical software for Difference-in-Differences and Two-Way fixed effects regression

Please note that the below packages have been recently developed, and will be updated frequently. We suggest you carefully read each "vignette" and (optionally) "paper" before you use them for your own research. We marked the ones that we think are relatively easier to use with ":exclamation:".

To install each R package, please visit each of their "vignette" page. To install and run STATA commands, visit [this webpage](https://www.stata.com/support/ssc-installation/).

### Visualizing DiD trends and Panel Data Structure

- :exclamation: "DiDdesign" (R package) [[vignette](https://github.com/naoki-egami/DIDdesign), [paper](https://arxiv.org/pdf/2102.09948.pdf)]
- :exclamation: "panelView" (R package) [[vignette](http://yiqingxu.org/software/panelView/panelView.html)]
- :exclamation: "PanelMatch" (R package) [[vignette](https://github.com/insongkim/PanelMatch), [paper](https://imai.fas.harvard.edu/research/files/tscs.pdf)]

### DiD Design

- :exclamation: "DiDdesign" (R package) [[vignette](https://github.com/naoki-egami/DIDdesign), [paper](https://arxiv.org/pdf/2102.09948.pdf)]
- :exclamation: "did_multiplegt" (STATA command) [[vignette](https://ideas.repec.org/c/boc/bocode/s458643.html), [paper](https://arxiv.org/pdf/1803.08807.pdf)]
- :exclamation: "did" (R package) [[vignette](https://github.com/bcallaway11/did), [paper](https://arxiv.org/pdf/1803.09015.pdf)]
- "synthdid" (R package) [[vignette](https://github.com/synth-inference/synthdid), [paper](https://arxiv.org/pdf/1812.09970.pdf)]
- "fuzzydid" (STATA command) [[vignette](http://fmwww.bc.edu/repec/bocode/f/fuzzydid.ado), paper ([1](https://faculty.crest.fr/xdhaultfoeuille/wp-content/uploads/sites/9/2019/09/fuzzydid_stata.pdf)) and ([2](http://www.restud.com/wp-content/uploads/2017/08/MS19615manuscript.pdf))]
- "orddid" (R package) [[vignette](https://github.com/soichiroy/orddid), [paper](https://arxiv.org/pdf/2009.13404.pdf)]

### Two-way fixed effects

- :exclamation: "fect" (R package) [[vignette](http://yiqingxu.org/software/fect/fect.html), [paper](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3555463)]
- :exclamation: "twowayfeweights" (STATA command) [[vignette](https://ideas.repec.org/c/boc/bocode/s458611.html), [paper](https://arxiv.org/pdf/1803.08807.pdf)]
- "wfe" (R package) [[vignette](https://cran.r-project.org/web/packages/wfe/wfe.pdf), [paper](https://imai.fas.harvard.edu/research/files/FEmatch.pdf)]
- "PanelMatch" (R package) [[vignette](https://github.com/insongkim/PanelMatch), [paper](https://imai.fas.harvard.edu/research/files/tscs.pdf)]
- "tjbal" (R package) [[vignette](http://yiqingxu.org/software/tjbal/tjbal.html), [paper](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3214231)]
- "gsynth" (R package) [[vignette](http://yiqingxu.org/software/gsynth/gsynth_examples.html), [paper](http://yiqingxu.org/papers/english/2016_Xu_gsynth/Xu_PA_2017.pdf)]

## Reading list

### Difference-in-Differences

_Basics_

- Angrist, Joshua D., and Jörn-Steffen Pischke. 2009. _Mostly Harmless Econometrics: An Empiricist's Companion_. Princeton University Press, Ch. 5.
- Imbens, Guido W., and Donald B. Rubin. 2015. _Causal Inference for Statistics, Social, and Biomedical Sciences: An Introduction_. Cambridge University Press, Chs. 1-2.

_Difference-in-Differences with multiple periods_

- Arkhangelsky, Dmitry et al. 2020. "Synthetic Difference in Differences." Working paper. [[link](https://arxiv.org/pdf/1812.09970.pdf)]
- Borusyak, Kirill, and Xavier Jaravel. 2018. "Revisiting Event Study Designs." Working paper. [[link](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2826228)]
- Callaway, Brantly, and Pedro H. C. Sant'Anna. 2020. "Difference-in-Differences with Multiple Time Periods." Forthcoming in Journal of Econometrics. [[link](https://arxiv.org/pdf/1803.09015.pdf)]
- Egami, Naoki, and Soichiro Yamauchi. 2021. "Using Multiple Pre-treatment Periods to Improve Difference-in-Differences and Staggered Adoption Designs." Working paper. [[link](https://arxiv.org/pdf/2102.09948.pdf)]
- Goodman-Bacon, Andrew. 2020. "Difference-in-Differences with Variation in Treatment Timing." Working paper. [[link](http://goodman-bacon.com/pdfs/ddtiming.pdf)]
- Strezhnev, Anton. 2018. "Semiparametric Weighting Estimators for Multi-Period Difference-in-Differences Designs." Working paper. [[link](https://www.antonstrezhnev.com/s/generalized_did.pdf)]
- Sun, Liyang, and Sarah Abraham. 2021. "Estimating Dynamic Treatment Effects in Event Studies with Heterogeneous Treatment Effects." Forthcoming in Journal of Econometrics. [[link](https://arxiv.org/pdf/1804.05785.pdf)]

_More on "parallel trends"_

- Egami, Naoki, and Soichiro Yamauchi. 2021. "Using Multiple Pre-treatment Periods to Improve Difference-in-Differences and Staggered Adoption Designs." Working paper. [[link](https://arxiv.org/pdf/2102.09948.pdf)]
- Leavitt, Thomas. 2020. "Beyond Parallel Trends: Improvements on Estimation and Inference in the Difference-in-Differences Design." Working paper. [[link](https://static1.squarespace.com/static/5d54a19a5a1edf0001ea677a/t/5f583468a4dcca4eebc2b923/1599616104657/Bayes_Diff_in_Diffs_Paper.pdf)]
- Marcus, Michelle, and Pedro H. C. Sant'Anna. 2020. "The Role of Parallel Trends in Event Study Settings: An Application to Environmental Economics." Forthcoming in Journal of the Association of Environmental and Resource Economists. [[link](https://arxiv.org/pdf/2009.01963.pdf)]
- Roth, Jonathan, and Pedro H. C. Sant’Anna. 2020. "When Is Parallel Trends Sensitive to Functional Form?" Working paper. [[link](http://arxiv.org/abs/2010.04814)]

_Non-linear DiD, different types of outcome variable, etc_

- Abadie, Alberto. 2005. "Semiparametric Difference-in-Differences Estimators." Review of Economic Studies 72(1): 1–19. [[link](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.318.1781&rep=rep1&type=pdf)]
- Athey, Susan, and Guido W. Imbens. 2006. "Identification and Inference in Nonlinear Difference-in-Differences Models." Econometrica 74(2): 431–97. [[link](http://www.ecn.ulaval.ca/guy_lacroix/Cours/ECN-7180/Obligatoires/Athey_Imbens.pdf)]
- Bertrand, Marianne, Esther Duflo, and Sendhil Mullainathan. 2004. "How Much Should We Trust Differences-in-Differences Estimates?" The Quarterly Journal of Economics 119(1): 249–75. [[link](https://sendhil.org/wp-content/uploads/2019/08/Publication-53.pdf)]
- de Chaisemartin, Clément, and Xavier D'Haultfœuille. 2018. "Fuzzy Differences-in-Differences." Review of Economic Studies 85(2): 999–1028. [[link](https://faculty.crest.fr/xdhaultfoeuille/wp-content/uploads/sites/9/2019/09/fuzzy_did.pdf)]
- de Chaisemartin, Clément, and Xavier D'Haultfœuille. 2020. "Difference-in-Differences Estimators of Intertemporal Treatment Effects." Working paper. [[link](https://sites.google.com/site/clementdechaisemartin/draft_dynamic.pdf?attredirects=0&d=1)]
- Ding, Peng, and Fan Li. 2019. "A Bracketing Relationship between Difference-in-Differences and Lagged-Dependent-Variable Adjustment." Political Analysis 27(4): 605–15. [[link](https://arxiv.org/pdf/1903.06286.pdf)]
- Yamauchi, Soichiro. 2020. "Difference-in-Differences for Ordinal Outcomes: Application to the Effect of Mass Shootings on Attitudes towards Gun Control." Working paper. [[link](https://arxiv.org/pdf/2009.13404.pdf)]

### Synthetic Controls

_Review_
- Abadie, Alberto. 2020. "Using Synthetic Controls: Feasibility, Data Requirements, and Methodological Aspects." Forthcoming in Journal of Economic Literature. [[link](https://www.aeaweb.org/content/file?id=12409)]

_Canonical papers_
- Abadie, Alberto, and Javier Gardeazabal. 2003. "The Economic Costs of Conflict: A Case Study of the Basque Country." American Economic Review 93(1): 113–32. [[link](https://www.fsb.miamioh.edu/lij14/411_scm2.pdf)]
- Abadie, Alberto, Alexis Diamond, and Jens Hainmueller. 2010. "Synthetic Control Methods for Comparative Case Studies: Estimating the Effect of California's Tobacco Control Program." Journal of the American Statistical Association 105(490): 493–505. [[link](https://www.ifs.org.uk/docs/abadiesyntheticcontrolmethods.pdf)]
- Abadie, Alberto, Alexis Diamond, and Jens Hainmueller. 2015. "Comparative Politics and the Synthetic Control Method." American Journal of Political Science 59(2): 495–510. [[link](https://web.stanford.edu/~jhain/Paper/AJPS2015a.pdf)]

_Recent advances_
- Xu, Yiqing. 2017. "Generalized Synthetic Control Method: Causal Inference with Interactive Fixed Effects Models." Political Analysis 25(1): 57–76. [[link](http://yiqingxu.org/papers/english/2016_Xu_gsynth/Xu_PA_2017.pdf)]
- Chernozhukov, Victor, Kaspar Wüthrich, and Yinchu Zhu. 2020. "An Exact and Robust Conformal Inference Method for Counterfactual and Synthetic Controls." Working paper. [[link](https://arxiv.org/pdf/1712.09089.pdf)]

### Panel/TSCS Data

_Basics_

- Angrist, Joshua D., and Jörn-Steffen Pischke. 2009. _Mostly Harmless Econometrics: An Empiricist's Companion_. Princeton University Press, Chs 5.1 & 8.
- Blackwell, Matthew, and Adam Glynn. 2018. "How to Make Causal Inferences with Time-Series Cross-Sectional Data under Selection on Observables." American Political Science Review 112(4): 1067–82. [[link](https://www.mattblackwell.org/files/papers/causal-tscs.pdf)]

_Inference under heterogenous treatment effects_

- Athey, Susan et al. 2020. "Matrix Completion Methods for Causal Panel Data Models." Working paper. [[link](https://arxiv.org/pdf/1710.10251.pdf)]
- de Chaisemartin, Clément, and Xavier D'Haultfœuille. 2020. "Two-Way Fixed Effects Estimators With Heterogeneous Treatment Effects." American Economic Review 110(9): 2964–96. [[link](https://arxiv.org/pdf/1803.08807.pdf)]
- Imai, Kosuke, and In Song Kim. 2019. "When Should We Use Linear Fixed Effects Regression Models for Causal Inference with Panel Data?" American Journal of Political Science 63(3): 467–90. [[link](https://imai.fas.harvard.edu/research/files/FEmatch.pdf)]
- Imai, Kosuke, In Song Kim, and Erik Wang. 2020. "Matching Methods for Causal Inference with Time-Series Cross-Section Data." Working paper. [[link](https://imai.fas.harvard.edu/research/files/tscs.pdf)]
- Imai, Kosuke, and In Song Kim. 2020. "On the Use of Linear Fixed Effects Regression Models for Causal Inference." Forthcoming in Political Analysis. [[link](https://imai.fas.harvard.edu/research/files/FEmatch-twoway.pdf)]
- Liu, Licheng, Ye Wang, and Yiqing Xu. 2020. "A Practical Guide to Counterfactual Estimators for Causal Inference with Time-Series Cross-Sectional Data." Working paper. [[link](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3555463)]

_More recent works and extensions_

- Arkangelsky, Dmitry, and Guido W. Imbens. 2021. "Double-Robust Identification for Causal Panel Data Models." NBER Working Paper Series, No. 28364. [[link](https://www.nber.org/system/files/working_papers/w28364/w28364.pdf)]
- de Chaisemartin, Clément, and Xavier D'Haultfœuille. 2020. "Two-Way Fixed Effects Regressions with Several Treatments." Working paper. [[link](https://sites.google.com/site/clementdechaisemartin/Notemultipletreatments.pdf?attredirects=0&d=1)]
- Hazlett, Chad, and Yiqing Xu. 2018. "Trajectory Balancing: A General Reweighting Approach to Causal Inference with Time-Series Cross-Sectional Data." Working paper. [[link](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3214231)]
