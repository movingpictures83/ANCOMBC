# ANCOMBC
# Language: R
# Input: TXT
# Output: CSV
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: ANCOMBC_1.0.5, microbiome_1.12.0

PluMA plugin that finds biomarkers using Analysis of Compositions of Microbiomes with Bias Correction (ANCOM-BC, Lin et al 2020).

The plugin accepts an input parameter file of tab-delimited keyword-value pairs:
otufile: Abundances
mapping: Sample data
tree: Taxonomy
column: Attribute to use for grouping

Biomarkers are output to a CSV file, signified by TRUE.
