#!/usr/bin/env cwl-runner

baseCommand:
- label_multi.py
class: CommandLineTool
cwlVersion: v1.0
id: label_multi.py
inputs:
- doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'find_fusion_genes.py'.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: It contains the list of fusion genes with offending reads.
  id: data
  inputBinding:
    prefix: --data
  type: string
- doc: Label used to mark the candidate fusion genes which are founf in the filter.
  id: label
  inputBinding:
    prefix: --label
  type: string
- doc: For fusion genes with striclty less than the number of supporting pairs, specified
    here, it is applied the second label. Default is none.
  id: pairs
  inputBinding:
    prefix: --pairs
  type: string
- doc: The output text tab-separated file containing the candidate fusion genes which
    are found in the filter. The format is as the input file and sorted by counts
    column.
  id: output
  inputBinding:
    prefix: --output
  type: string
