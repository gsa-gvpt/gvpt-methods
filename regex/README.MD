# Tips and Tricks for Optimizing Regex

Eric Dunford

Last updated: November 11, 2021

## Video, slides, and related materials

A video of the presentation can be found [here](https://umd.box.com/s/w2zrurfuy6h819ubg42z07mqt6dk8x7o).

## Description

Regular expressions (regex) allow for targeted pattern recognition using unstructured text. Regex is used regularly to detect signals from text, especially when textual variation (e.g. misspelling) prevents one-to-one matching using a dictionary or lack of labeled data precludes constructing a classifier. However, poorly constructed regex schemas can result in inefficient run times, making them prohibitive at scale. In this workshop, I will cover ways one can construct and optimize regex schemas to make signal extraction more efficient and scalable. I'll touch on how regex evaluates a text corpus and how to construct decision patterns that decrease the call time so that schemas fail quicker when the target pattern is not present in the corpus. 

## Useful Links

Below are some website where you can practice REGEX!

1. REGEX 101: https://regex101.com/
2. REGEX Quick Start: https://www.rexegg.com/regex-quickstart.html
