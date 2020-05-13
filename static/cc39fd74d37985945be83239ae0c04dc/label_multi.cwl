class: CommandLineTool
id: label_multi.py.cwl
inputs:
- id: input
  doc: The input file in text tab delimited format containing the fusion genes candidates
    produced by 'find_fusion_genes.py'.
  type: string
  inputBinding:
    prefix: --input
- id: data
  doc: It contains the list of fusion genes with offending reads.
  type: string
  inputBinding:
    prefix: --data
- id: label
  doc: Label used to mark the candidate fusion genes which are founf in the filter.
  type: string
  inputBinding:
    prefix: --label
- id: pairs
  doc: For fusion genes with striclty less than the number of supporting pairs, specified
    here, it is applied the second label. Default is none.
  type: string
  inputBinding:
    prefix: --pairs
- id: output
  doc: The output text tab-separated file containing the candidate fusion genes which
    are found in the filter. The format is as the input file and sorted by counts
    column.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- label_multi.py
