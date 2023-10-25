# Creating Event Data with NGEC

Prof. Andrew Halterman

Last updated: October 25, 2023

## Video

A video of the presentation can be found [here](https://umd.box.com/s/ddwvdohch4qo41cz0n3l59t7396hzcyl).

## Description

Event data–structured information on "who did what to whom"–is an important form of data in political science, but extracting it from text by hand or previous automated methods is slow, expensive, or inaccurate. This paper, and its associated Python package, break the process of generating events into separate steps and provide new automated techniques for each. It includes techniques for event and context classification using transformer-based classifiers and active learning, identifying the participants in an event using a custom question-answer model, resolving event participants to Wikipedia and locations to their geographic coordinates, and coding actors by their country and political role. Together, the steps in the pipeline can produce complete event records from text, but each component can also be used separately to address a specific challenge that a researcher faces. The talk addresses three of these steps (training a classifier, geolocation, and resolving actors to Wikipedia) with a practical focus on how researchers can do each of them.

## Materials

All materials are available on Prof. Halterman's GitHub repository. The slides used in the workshop are available [here](https://github.com/ahalterman/NGEC/blob/main/examples/NGEC_pres.pdf). Code for the geoparsing and Wikipedia actor resolution demos shown in the workshop can be found [here](https://github.com/ahalterman/NGEC/tree/main/examples). The custom event model code can be found [here](https://github.com/ahalterman/NGEC/tree/main/setup/train_classifiers). Finally, the overall NGEC package repo can be found [here](https://github.com/ahalterman/NGEC/tree/main).
