# Causal Inference with Panel Data

[Xiaonan Wang](https://github.com/Xiaonan21) and [Kee Hyun Park](https://github.com/keehyunpark)

Last updated: March 8, 2021

## Video and Slides

A video of the presentation can be found [here](https://www.dropbox.com/s/0dwhfvulb6owaed/causal-inference-panel-data-kpark-xwang.mp4?dl=0).

Shorter version of slides used for presentation are available [here](https://github.com/EandrewJones/gvpt-methods/blob/master/paneldata/slides_paneldata_short.pdf). Please note that all the references used for the presentation are included in the last 3 pages of the slides.

## Description

In this workshop, we discuss both classic and recent literature on causal inference using panel data, with difference-in-differences as a special case. We highlight the potential outcomes approach to panel data, its core assumptions, challenges, and practical solutions. The workshop mainly consists the following parts:

1) A brief review of the potential outcome framework
2) Show different structures of panel data (e.g. difference-in-differences, staggered adoption, treatment reversal, etc.) with panel data visualization tools
3) Introduce key causal assumptions and inferences under the canonical difference-in-differences design
4) Review two-way fixed effects (2FE) linear regression, a popular approach used in general panel data settings with multiple units, multiple periods and varying structures of treatment adoptions
5) Introduce the conditions under which causal inference using 2FE model is problematic
6) Introduce relatively easy-to-apply methods that can improve two-way fixed effects model

## Statistical software for Difference-in-Differences and Two-Way fixed effects regression

### Visualizing Panel Data Structure

- ["panelView"](http://yiqingxu.org/software/panelView/panelView.html)
- ["PanelMatch"](https://github.com/insongkim/PanelMatch) [[Companion paper](https://imai.fas.harvard.edu/research/files/tscs.pdf)]

### DiD Design

- did_multiplegt (STATA command) [[vignette](https://ideas.repec.org/c/boc/bocode/s458643.html),[companion paper](https://arxiv.org/pdf/1803.08807.pdf)]
- did (R package) [[vignette](https://github.com/bcallaway11/did), [companion paper](https://arxiv.org/pdf/1803.09015.pdf)]
- synthdid (R package) [[vignette](https://github.com/synth-inference/synthdid),[companion paper](https://arxiv.org/pdf/1812.09970.pdf)]
- DiDdesign (R package) [[vignette](https://github.com/naoki-egami/DIDdesign),[companion paper](https://arxiv.org/pdf/2102.09948.pdf)]
- fuzzydid (STATA command) [[vignette](http://fmwww.bc.edu/repec/bocode/f/fuzzydid.ado),[companion paper [[1](https://faculty.crest.fr/xdhaultfoeuille/wp-content/uploads/sites/9/2019/09/fuzzydid_stata.pdf)] and [[2](http://www.restud.com/wp-content/uploads/2017/08/MS19615manuscript.pdf)]]
- orddid (R package) [[vignette](https://github.com/soichiroy/orddid),[companion paper](https://arxiv.org/pdf/2009.13404.pdf)]

### Two-way fixed effects

- fect (R package) [[vignette](http://yiqingxu.org/software/fect/fect.html),[companion paper](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3555463)]
- wfe (R package) [[vignette](https://cran.r-project.org/web/packages/wfe/wfe.pdf),[companion paper](https://imai.fas.harvard.edu/research/files/FEmatch.pdf)]
- twowayfeweights (STATA command) [[vignette](https://ideas.repec.org/c/boc/bocode/s458611.html),[companion paper](https://arxiv.org/pdf/1803.08807.pdf)]
- PanelMatch (R package) [[vignette](https://github.com/insongkim/PanelMatch),[companion paper](https://imai.fas.harvard.edu/research/files/tscs.pdf)]
- tjbal (R package) [[vignette](http://yiqingxu.org/software/tjbal/tjbal.html),[companion paper](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3214231)]
- gsynth (R package) [[vignette](http://yiqingxu.org/software/gsynth/gsynth_examples.html),[companion paper](http://yiqingxu.org/papers/english/2016_Xu_gsynth/Xu_PA_2017.pdf)]

## Reading list

### Difference-in-Differences

- Angrist, Joshua D., and Jörn-Steffen Pischke. 2009. _Mostly Harmless Econometrics: An Empiricist's Companion_. Princeton University Press, Ch. 5.

- Callaway, Brantly, and Pedro H. C. Sant'Anna. 2020. ["Difference-in-Differences with Multiple Time Periods."](https://arxiv.org/pdf/1803.09015.pdf) Forthcoming in Journal of Econometrics.
- Sun, Liyang, and Sarah Abraham. 2021. ["Estimating Dynamic Treatment Effects in Event Studies with Heterogeneous Treatment Effects."](https://arxiv.org/pdf/1804.05785.pdf) Forthcoming in Journal of Econometrics.
- Goodman-Bacon, Andrew. 2020. ["Difference-in-Differences with Variation in Treatment Timing."](http://goodman-bacon.com/pdfs/ddtiming.pdf) Working paper.
- Arkhangelsky, Dmitry et al. 2020. ["Synthetic Difference in Differences."](https://arxiv.org/pdf/1812.09970.pdf) Working paper.
- Strezhnev, Anton. 2018. ["Semiparametric Weighting Estimators for Multi-Period Difference-in-Differences Designs."](https://www.antonstrezhnev.com/s/generalized_did.pdf) Working paper.
- Ding, Peng, and Fan Li. 2019. ["A Bracketing Relationship between Difference-in-Differences and Lagged-Dependent-Variable Adjustment."](https://arxiv.org/pdf/1903.06286.pdf) Political Analysis 27(4): 605–15.
- Egami, Naoki, and Soichiro Yamauchi. 2021. ["Using Multiple Pre-treatment Periods to Improve Difference-in-Differences and Staggered Adoption Designs."](https://arxiv.org/pdf/2102.09948.pdf) Working paper.
- Yamauchi, Soichiro. 2020. ["Difference-in-Differences for Ordinal Outcomes: Application to the Effect of Mass Shootings on Attitudes towards Gun Control."](https://arxiv.org/pdf/2009.13404.pdf) Working paper.
- Marcus, Michelle, and Pedro H. C. Sant'Anna. 2020. ["The Role of Parallel Trends in Event Study Settings: An Application to Environmental Economics."](https://arxiv.org/pdf/2009.01963.pdf) Forthcoming in Journal of the Association of Environmental and Resource Economists.
- Leavitt, Thomas. 2020. ["Beyond Parallel Trends: Improvements on Estimation and Inference in the Difference-in-Differences Design."](https://static1.squarespace.com/static/5d54a19a5a1edf0001ea677a/t/5f583468a4dcca4eebc2b923/1599616104657/Bayes_Diff_in_Diffs_Paper.pdf) Working paper.
- de Chaisemartin, Clément, and Xavier D'Haultfoeuille. 2018. ["Fuzzy Differences-in-Differences."](https://faculty.crest.fr/xdhaultfoeuille/wp-content/uploads/sites/9/2019/09/fuzzy_did.pdf) Review of Economic Studies 85(2): 999–1028.
- de Chaisemartin, Clément, and Xavier D'Haultfœuille. 2020. ["Difference-in-Differences Estimators of Intertemporal Treatment Effects."](https://sites.google.com/site/clementdechaisemartin/draft_dynamic.pdf?attredirects=0&d=1) Working paper.
- Roth, Jonathan, and Pedro H. C. Sant’Anna. 2020. ["When Is Parallel Trends Sensitive to Functional Form?"](http://arxiv.org/abs/2010.04814) Working paper.
- Bertrand, Marianne, Esther Duflo, and Sendhil Mullainathan. 2004. ["How Much Should We Trust Differences-in-Differences Estimates?"](https://sendhil.org/wp-content/uploads/2019/08/Publication-53.pdf) The Quarterly Journal of Economics 119(1): 249–75.
- Abadie, Alberto. 2005. ["Semiparametric Difference-in-Differences Estimators."](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.318.1781&rep=rep1&type=pdf) Review of Economic Studies 72(1): 1–19.
- Athey, Susan, and Guido W. Imbens. 2006. ["Identification and Inference in Nonlinear Difference-in-Differences Models."](https://onlinelibrary.wiley.com/doi/pdf/10.1111/j.1468-0262.2006.00668.x) Econometrica 74(2): 431–97.
- Borusyak, Kirill, and Xavier Jaravel. 2018. ["Revisiting Event Study Designs."](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2826228) Working paper.
- Borusyak, Kirilll, and Peter Hull. 2021. ["Non-Random Exposure to Exogenous Shocks: Theory and Applications."](https://uc9c9fe52cefb127acdc33d7bf91.dl.dropboxusercontent.com/cd/0/inline2/BKOxEj9Cg1XWgKBvXeOgOG71oAsiyhlr_PLlwS8L_6Jz3dGvYC6SNeCv6AbCp7i7eskjkhqFkJ5QDk3MPJFydfv5ifZ4e7pf4twNmRxOBE9Jme2LUdLyn5FM3_q9pN9UCsYc45tgqjJvt3Bc4tWgIm8h5rCuwhVzCui48vklO7S4KvttoNv9RTDlrf5ikcYZi5QkcRReyuzMmuBCXTlrnrh8NXWNgBK7NJ6YPb89kgU0-zVhteGIg-lzHK1IGph6ZW_xwx00YQ4XcWi7jyHz4G3joXItq67hm60OX6HKBM6dMisOV2TbtCBPxz0I6hyskRNBczhykdhNJEzSJDt-9jmCZvPQL8d_7IjYp8C1pWibmMUUycnbGehh1wBy8qPTwp8/file#) NBER Working Paper Series, No. 27845.

#### Panel Data

- Angrist and Pischke 2009, ch 5.1 & 8.

- de Chaisemartin, Clément, and Xavier D'Haultfœuille. 2020. ["Two-Way Fixed Effects Estimators With Heterogeneous Treatment Effects."](https://arxiv.org/pdf/1803.08807.pdf) The American Economic Review 110(9): 2964–96.
- Imai, Kosuke, and In Song Kim. 2019. ["When Should We Use Linear Fixed Effects Regression Models for Causal Inference with Panel Data?"](https://imai.fas.harvard.edu/research/files/FEmatch.pdf) American Journal of Political Science 63(3): 467–90.
- Imai, Kosuke, In Song Kim, and Erik Wang. 2020. ["Matching Methods for Causal Inference with Time-Series Cross-Section Data."](https://imai.fas.harvard.edu/research/files/tscs.pdf) Working paper.
- Imai, Kosuke, and In Song Kim. 2020. ["On the Use of Linear Fixed Effects Regression Models for Causal Inference."](https://imai.fas.harvard.edu/research/files/FEmatch-twoway.pdf) Forthcoming in Political Analysis.
- Athey, Susan et al. 2020. ["Matrix Completion Methods for Causal Panel Data Models."](https://arxiv.org/pdf/1710.10251.pdf) Working paper.
- Liu, Licheng, Ye Wang, and Yiqing Xu. 2020. ["A Practical Guide to Counterfactual Estimators for Causal Inference with Time-Series Cross-Sectional Data."](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3555463) Working paper.
- Arkangelsky, Dmitry, and Guido W. Imbens. 2021. ["Double-Robust Identification for Causal Panel Data Models."](http://www.nber.org/papers/w28364) NBER Working Paper Series, No. 28364.
- Blackwell, Matthew, and Adam Glynn. 2018. ["How to Make Causal Inferences with Time-Series Cross-Sectional Data under Selection on Observables."](https://www.mattblackwell.org/files/papers/causal-tscs.pdf) American Political Science Review 112(4): 1067–82.
- Hazlett, Chad, and Yiqing Xu. 2018. ["Trajectory Balancing: A General Reweighting Approach to Causal Inference with Time-Series Cross-Sectional Data."](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3214231) Working paper.
- de Chaisemartin, Clément, and Xavier D'Haultfœuille. 2020. ["Two-Way Fixed Effects Regressions with Several Treatments."](https://sites.google.com/site/clementdechaisemartin/Notemultipletreatments.pdf?attredirects=0&d=1) Working paper.
- Hazlett, Chad, and Leonard Wainstein. 2020. "Understanding, Choosing, and Unifying Multilevel and Fixed Effect Approaches." Forthcoming in Political Analysis.

#### Synthetic Controls

- Abadie, Alberto. 2020. ["Using Synthetic Controls: Feasibility, Data Requirements, and Methodological Aspects."](https://www.aeaweb.org/content/file?id=12409) Forthcoming in Journal of Economic Literature.
- Abadie, Alberto, and Javier Gardeazabal. 2003. ["The Economic Costs of Conflict: A Case Study of the Basque Country."](https://www.fsb.miamioh.edu/lij14/411_scm2.pdf) The American Economic Review 93(1): 113–32.
- Abadie, Alberto, Alexis Diamond, and Jens Hainmueller. 2010. ["Synthetic Control Methods for Comparative Case Studies: Estimating the Effect of California's Tobacco Control Program."](https://www.tandfonline.com/doi/pdf/10.1198/jasa.2009.ap08746) Journal of the American Statistical Association 105(490): 493–505.
- Abadie, Alberto, Alexis Diamond, and Jens Hainmueller. 2015. ["Comparative Politics and the Synthetic Control Method."](https://onlinelibrary.wiley.com/doi/pdf/10.1111/ajps.12116?casa_token=0Bs6FnwtYt8AAAAA:BPTnYzlr21dDsTKf8DL1cbIOmAfCf2W3baaxLyeGpyI-2NgHQ7OxajsYxn3QaS3vetZCRdG_31KFBe9v) American Journal of Political Science 59(2): 495–510.
- Xu, Yiqing. 2017. ["Generalized Synthetic Control Method: Causal Inference with Interactive Fixed Effects Models."](http://yiqingxu.org/papers/english/2016_Xu_gsynth/Xu_PA_2017.pdf) Political Analysis 25(1): 57–76.
- Ben-Michael, Eli, Avi Feller, and Jesse Rothstein. 2019. ["Synthetic Controls and Weighted Event Studies with Staggered Adoption."](https://arxiv.org/pdf/1912.03290.pdf) Working paper.
- Ben-Michael, Eli, Avi Feller, and Jesse Rothstein. 2020. ["The Augmented Synthetic Control Method."](https://arxiv.org/pdf/1811.04170.pdf) Working paper.
- Chernozhukov, Victor, Kaspar Wüthrich, and Yinchu Zhu. 2020. ["An Exact and Robust Conformal Inference Method for Counterfactual and Synthetic Controls."](https://arxiv.org/pdf/1712.09089.pdf) Working paper.
- Ferman, Bruno, and Cristine Pinto. 2019. ["Synthetic Controls with Imperfect Pre-Treatment Fit."](https://arxiv.org/pdf/1906.06665.pdf.) Working paper.
- Ferman, Bruno. 2019. ["On the Properties of the Synthetic Control Estimator with Many Periods and Many Controls."](http://arxiv.org/abs/1906.06665.) Working paper.
