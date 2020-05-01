#!/usr/bin/env cwl-runner

baseCommand:
- partial_least_squares.py
class: CommandLineTool
cwlVersion: v1.0
id: partial_least_squares.py
inputs:
- doc: Input dataset in wide format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Design file.
  id: design
  inputBinding:
    prefix: --design
  type: string
- doc: Name of the column with unique identifiers.
  id: id
  inputBinding:
    prefix: --ID
  type: string
- doc: Name of the column with groups.
  id: group
  inputBinding:
    prefix: --group
  type: string
- doc: Different groups to sort by separeted by commas.
  id: levels
  inputBinding:
    prefix: --levels
  type: string
- doc: Name of the elements to compare in group col.
  id: to_compare
  inputBinding:
    prefix: --toCompare
  type: string
- doc: 'Choice of cross-validation procedure for the -nc determinantion: none, single,
    double.'
  id: cross_validation
  inputBinding:
    prefix: --cross_validation
  type: string
- doc: Number of components.
  id: n_comp
  inputBinding:
    prefix: --nComp
  type: string
- doc: Name of output file to store loadings. TSV format.
  id: out_scores
  inputBinding:
    prefix: --outScores
  type: string
- doc: Name of output file to store weights. TSV format.
  id: out_weights
  inputBinding:
    prefix: --outWeights
  type: string
- doc: Name of output file to store classification. TSV format.
  id: out_classification
  inputBinding:
    prefix: --outClassification
  type: string
- doc: Name of output file to store classification accuracy. TSV format.
  id: out_classification_accuracy
  inputBinding:
    prefix: --outClassificationAccuracy
  type: string
- doc: Name of output file to store scatter plots for scores
  id: figure
  inputBinding:
    prefix: --figure
  type: string
- doc: Name of the palette to use.
  id: palette
  inputBinding:
    prefix: --palette
  type: string
- doc: Name of a valid color scheme on the selected palette
  id: color
  inputBinding:
    prefix: --color
  type: string
- doc: Add debugging log output.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
