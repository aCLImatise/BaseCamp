class: CommandLineTool
id: ../../../mb_naive_bsfinder.cwl
inputs:
- id: min_transitions
  doc: minimum number of transitions required
  type: long
  inputBinding:
    prefix: --min_transitions
- id: reference
  doc: set default reference nucleotide
  type: string
  inputBinding:
    prefix: --reference
- id: mutation
  doc: set default mutation nucleotide
  type: string
  inputBinding:
    prefix: --mutation
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-naive-bsfinder
