class: CommandLineTool
id: label_found_fusions.py.cwl
inputs:
- id: input
  doc: The input file in text tab delimited format containing list of final candidates
    of fusion genes.
  type: string
  inputBinding:
    prefix: --input
- id: data
  doc: The input text file tab separated format containing gene pairs which are used
    as filter for labeling (two columns and no header). Be default the order of genes
    in the a pair is ignored.
  type: string
  inputBinding:
    prefix: --data
- id: data_not_commutative
  doc: By default the order of genes in the database is ignored. If this is set then
    the order matters.
  type: boolean
  inputBinding:
    prefix: --data-not-commutative
- id: label
  doc: Label used to mark the found fusion genes.
  type: string
  inputBinding:
    prefix: --label
- id: output
  doc: The output text tab-separated file containing the candidate fusion genes which
    are found.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- label_found_fusions.py
