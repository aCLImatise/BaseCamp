#!/usr/bin/env cwl-runner

baseCommand:
- label_found_fusions.py
class: CommandLineTool
cwlVersion: v1.0
id: label_found_fusions.py
inputs:
- doc: The input file in text tab delimited format containing list of final candidates
    of fusion genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input text file tab separated format containing gene pairs which are used
    as filter for labeling (two columns and no header). Be default the order of genes
    in the a pair is ignored.
  id: data
  inputBinding:
    prefix: --data
  type: string
- doc: By default the order of genes in the database is ignored. If this is set then
    the order matters.
  id: data_not_commutative
  inputBinding:
    prefix: --data-not-commutative
  type: boolean
- doc: Label used to mark the found fusion genes.
  id: label
  inputBinding:
    prefix: --label
  type: string
- doc: The output text tab-separated file containing the candidate fusion genes which
    are found.
  id: output
  inputBinding:
    prefix: --output
  type: string
